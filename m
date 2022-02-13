Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3D3F7C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 07:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644736203;
	h=To:Subject:From:Message-Id:Date;
	bh=qAf/J4IFR3a5IK1QsFCfHb8CtniZI52B8h3rvFtjnK4=;
	b=CA5E64bjSBQVbt4d4XAqYgkBP20dRCQXqHPXumHXcd6xK/XHvg9d2Au4BcAcSynR
	MqolGKDbfJP/KcCQNuQDs9OoEC4gYXmmOTmhiU5n3sE0QHY0xYndxgefqBZBOyfb2u/
	bjqzhUluQMOz0m8+q6WZxHX1UQmhLWKIMxxDA2o0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644736203;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qAf/J4IFR3a5IK1QsFCfHb8CtniZI52B8h3rvFtjnK4=;
	b=OjM4R5Sy2hx7bLqYH2AwgGMiX8VmbhvvS9QgdAb1Q+z845CEsr77qGXiJhQDA5Ii
	NJT5XB+jDZ+XEI1y/RHxVXBcTbt6VqecceyhaulLr7mdTrm//+EiDobhds3g6JC+1aO
	UVrKAllfTAfqucSfMsE1cItSrVqm1Ho5w8F9HDm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef1eac865-85e9e53f-b2e9-48be-bb94-2cebd82e29ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ef42e10ff91680720d8c6638c60f36d06a4461759448b18f100b125d91748f6
Date: Sun, 13 Feb 2022 07:10:02 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644736202
