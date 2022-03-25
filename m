Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A0E28E4
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 19:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648236118;
	h=To:Subject:From:Message-Id:Date;
	bh=lHyP6jdXu5G3ge+t+vMCTZtLw5/4PByH2TIO2xVXIc4=;
	b=l+ssqh3hH0rbyl7JiybWtTxiAxbTbOVCSunWSGVZ05lKRQeLE5KbK/Ay0mrR2lQn
	1VRkUAXh2sJILoRrVBX4crKNsyUzTrEKje/bDnuN06I0711mOy4fbpTNcFiR0UXYp7m
	4VSt2Umm8X1g54BwSWH6D3VcXHV2wPiv/t01Z/Gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648236118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lHyP6jdXu5G3ge+t+vMCTZtLw5/4PByH2TIO2xVXIc4=;
	b=ZqiT1BfVIyBEcDQjD5ZMNi+aIhttV320f6wQkn57lFxZbyv9eq+EsgekVpjIkya0
	RupTVYUN59uSFqZEvuB6UbZ9/RF5t5URmKO/QfHuqQhDpBhqarJzSq3TwCy/UMKBd/X
	NGeDsATaeUqtvLdl9EoZXQ0Tc0zjoITEi5ck5ZOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc2874167-fd74112e-b433-4583-8fa7-e20ca502a678-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4b8a9c6b36852af2fe57f2fe958bb9b6de36192154f394c8f07b6f9a9caf3e6
Date: Fri, 25 Mar 2022 19:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648236118
