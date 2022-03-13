Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DD4A23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647211284;
	h=To:Subject:From:Message-Id:Date;
	bh=+deYWlliURXZ1codYlon/6I6Ni9OyB5CofhRaulOSMc=;
	b=H30f6vZXx/8ROG2cAD9xMv6iJfsefaxddaO0F1a4rABrxTTfwS8zRFUV4dycvRih
	qbWRhzh9NdSw2njw8xZTaqWS4yAB3cVH5tg6ea8RpNK0TwwNlG8cIhocWxmPWQuaxBc
	DPbKVL/YAi2Nm94Mwqe5KRrGzAsQta4URzQCd3ZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647211284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+deYWlliURXZ1codYlon/6I6Ni9OyB5CofhRaulOSMc=;
	b=Cf7APk2iw8zzzWxjeEX2NIShNWgIa58xocuXpWNlwkjbogk+XDAIPQgMw7F7bIny
	wSmrGR0pmZF3Z8riavfyEXFZPGdBZerXIYbGYPbb8xfxcTECx+EMipZkFxVR8G4ubK8
	pqd6SPwMfJttxjgqOp94g5ORuqbLLzWjnmVcDgN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f857188ff-5e211404-6afe-41a0-9aa8-c80be979118d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 451499f53248f77436f5af932ca2fe0c4df2e86150eef275ecfed787f7393d08
Date: Sun, 13 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647211284
