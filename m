Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2177E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646972784;
	h=To:Subject:From:Message-Id:Date;
	bh=XXWXMl3c9kCXmJWlDSywA0KJuPN5DJ7vZelSMK95kIY=;
	b=KldiCy3J0ltEK/y9/5+KyF6c4xr0O+rxBrCBWoZdChnIQjX4QBXt9aOkIDPqof9w
	Ti9oLQBo09Vfttfvvnu4slFGKo/gdzyae41MLI36KaP+IiW5C1xWOwGfhAI+jlXP9pK
	/KImJqbIxy+30gxi4PRlHMHTnSmj4M7fUuRuFqko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646972784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XXWXMl3c9kCXmJWlDSywA0KJuPN5DJ7vZelSMK95kIY=;
	b=Wjd3s7g5v7RIKeyldj2AaOQpub6d+cIuVAF+HiuCHouLc7zYgPnAm/LTCUpj9EYs
	ixR/ahYV4mQ4K+Y+Gc7GFe1CT/ht9vOy/6AqZgZh2VSCRKufSY7My/aStAEjIbbUTQQ
	rr/39dr1s7AcC4fIM3+IRY9QOW+oAu6Va6oG1bq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f773a509c-68d760aa-40c0-4bfe-b77e-e409bf186661-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4008ed9eea988faa01ef244d19451a9b80ed7acd15a2d80b71e151e5d28af44e
Date: Fri, 11 Mar 2022 04:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646972784
