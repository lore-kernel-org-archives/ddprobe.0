Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8AC38C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646636785;
	h=To:Subject:From:Message-Id:Date;
	bh=hiJTCJ+BcnJv2qj43hk+GYRvAPXlHL+pJvj+EXDYcto=;
	b=B0nUUnTQS+u4i4fhuMtfxf7k+ASIHXBMpX4JXn14Y3f77MXBRncg530S/3b+N+KP
	hRDvelS8D9qax6oQnODnG53k/VQwSq9QSWBXnYMcimbzOF3Wsv+7YQJaWzeLbTvbsoy
	kz0tb3B8JMA36Z4bg+ON3m2jEVgi1K2RAVuYJLHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646636785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hiJTCJ+BcnJv2qj43hk+GYRvAPXlHL+pJvj+EXDYcto=;
	b=jt+Gbf59DKRwP+RM4rgwsNcP4akWi5c+1M4xBhV1vKWiFAlpUVdq6wC699IKOqHG
	E9brl2AB56mwWrkmB+iNjYC6NcDK3HlqpxuaGcRY9u0gLMw7nKiUOtrW/goaVvouS3d
	vRqmQeUS6CLIP4VgX15cRcxBimGheKTyAQ5gcY+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63335cbd-886be4ef-376b-44cc-90d9-e3ae61258049-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 098433e22a23e74558f3b658840c4b6042c926f558d5d2dd4da5dc80cc6ccff9
Date: Mon, 7 Mar 2022 07:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646636784
