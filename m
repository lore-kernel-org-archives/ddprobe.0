Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758286AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647295584;
	h=To:Subject:From:Message-Id:Date;
	bh=Zom9dlTLfOaVoaT0rH/8xvaZdRxvCM3T9Ep6tFsn+Zs=;
	b=goaZ3HWs7dcs4b8WPMkyYay6cM7wQ6JbVEj1wRnZvlPqLA0hLsK/akBedg92ncHh
	PqisFzUchIcOw339mg7q2/Ji9YlaqvF/emBvvkOMsLKIpaC/TjoRu4OMXMpbA2DL2iA
	ek1BvBo9kAo7w2NYbB34Iya/c0uAP5/vXBR+skcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647295584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zom9dlTLfOaVoaT0rH/8xvaZdRxvCM3T9Ep6tFsn+Zs=;
	b=C0HU1d8EyAnGUr5mGkJKnRL7FvFXEbTx/f9BpvM17nh0o3k78FGCT93QfsQ6dmZV
	iJGx4jguci9vDnLjfLL9q3HqhlU5ySRZPetV2q1HvIbqwEH+286JsEjgsXds3jn/UnA
	lLqbRLk/3JSakwp0szdsv1x6hEyXSNzK5tqx8zKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a77da0c-16858d99-f021-4f34-ba0f-f8c0f6dbb40b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bf09e765d6b313f745f719cb135b68a4198d3ff388c67d0df97d9c8270451cd
Date: Mon, 14 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647295584
