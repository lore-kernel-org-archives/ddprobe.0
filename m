Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95921C08
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657390012;
	h=To:Subject:From:Message-Id:Date;
	bh=3zdKTr6wpKW1qIucMPeiDLG1L6x5CdB1QlwfRanT8/M=;
	b=eBaWxifI5tbXEu5jFPYa6N861jmAutubfRsrvnr8q4taBE96x/efUfJo/bbQvGKN
	pJ0ry0j/kDx08hxrQuXQI5NhCX641FuQEqNK1jbGwm79oaJ3d7RYcWKFah828bUGV15
	XHpMe+9EZcMqliaGoHLd/lWF+OL4T0IlO6tJ2pSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657390012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3zdKTr6wpKW1qIucMPeiDLG1L6x5CdB1QlwfRanT8/M=;
	b=NJo7YcDKSoRMp1ekCA6vqQrzHXZyrYN6V8Avs8u0+i0BF5ASquPjLl5yfCS8S9yT
	2O9AiiQspIWKIIoGb4+ZjoE0RIyh58WIXiFj3WoINPEYZUFrpdy2Kjr3T1/vezDRdy9
	c+OfcEl7vSVhDHKqqLtRQz4umQedVg6SxIHx2iLM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e424979e-b2a621d4-dfba-4af8-8818-08aaf396a952-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be530ed195f9eedc275c7d2c918f5aaa3da3ac0acb2144f3ba8c1c207dcab572
Date: Sat, 9 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657390012
