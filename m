Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B071FA5
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658364412;
	h=To:Subject:From:Message-Id:Date;
	bh=tbgbWFV3dco98iLpCn2u7w8QgysXkt3QVMkF+e9MU6Y=;
	b=aSbbANOnBHytc4TR3+ReLXfnJRaa6wtIvvWZFWnBiv1cchVmIeUnRBOe2kPBBRtZ
	ETlHqsnJRAfvbT+eEk1d3GB0Y3I1BVCSXoLBzcB4xnGmdYF9d7S7reW7AVsLhjZG0uR
	DDTo9ui9DC9PgTve4F48k+alX72o4pSxQPjkojTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658364412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tbgbWFV3dco98iLpCn2u7w8QgysXkt3QVMkF+e9MU6Y=;
	b=W2Kj4HYob9d0Wsmwsm9/1L3svVsF+KlVeD5k1lnpnNo6gdvzRoKNa+Smp3uqq76E
	at1ikCOuOR0wQ6MLkle5uthpmRoyOL/w6fBlVDV+q6XbPinp+WrcR3248qChqnqumOq
	4f6ZUjZQ0f4NpDGJfWz0ynHsFJOILpQVA0wcI33o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e38c17c-afe5471c-e4e7-4436-acdd-cc767d43fd22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ea9a3cae1d3a9bb8a804cdaff4f5be21cee852a5a9a6830fb46ea9fc1b9c0d5
Date: Thu, 21 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658364412
