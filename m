Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C71D7F
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644625253;
	h=To:Subject:From:Message-Id:Date;
	bh=RzJPcAEqag4SAkLAvkzFBVZt/PQnrUhoU+1u3RJi4vc=;
	b=bfOkClx5Gh/GGGmpVQrd3y3+C5pbpTaV2xdBhJhra+nOWzQ2ogz3V0KSwF529zUp
	20kqT4H2ucfO2wijK0xSdsTgv8V7CqG2xhhAX6WgB6aRWVywfYs9ih9GN6n/IkIbCjQ
	FDWpwEz+XejkOnbBRZk8gThl61mu2gsR9OyJyBVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644625253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RzJPcAEqag4SAkLAvkzFBVZt/PQnrUhoU+1u3RJi4vc=;
	b=hwu2lZk8TKwdCyWek7ID1l9MdD2VMmn65XgT3EiRDwXoVUOupsOU1DJq/qbzDd79
	wmluU1siCrkMvoUKXUgv2BDtzv3S53dPnG+xGAv3kWIPCkLiYIah7Fjb6Cj9v15QdVc
	pyQsVnEguQhiTTlMC2hk1hr3I4hK5EYVSx/fr6k8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb4dd3a5-dca0bfe3-00cd-4533-bc50-8089bb797f71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff4a9f0e8ebcd9c9606b9b5e5394b674a6062dabbc46076e82a1fb6838ce2a15
Date: Sat, 12 Feb 2022 00:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644625253
