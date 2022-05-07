Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EC4A52
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 06:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651903618;
	h=To:Subject:From:Message-Id:Date;
	bh=IMin1RD5jK8H/TGLmb1lCtkA/NoLP9gela3fZu2Y2f0=;
	b=gpSySJBcvoPVJxIR2Q8EkPns3GMmOi/ka9ch6u2HTrOe60WNqpL/JYrrm36KdZ1F
	qO33/HajfHEWIzByEGyOFwlB9Obz//g6zTQ0UmmACd9E2sqL2M4aOtMmokhAzRZlX/p
	gE5OsIqv3p8L1duaISMbMs1+Cvgjqi7zi+Tt4I74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651903618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IMin1RD5jK8H/TGLmb1lCtkA/NoLP9gela3fZu2Y2f0=;
	b=gXx4vK0XuR+OmxHMDWIJ3O84wz3LPYSsUSr/3CWDIv48Nd2V5j/94b1OrBnpQFko
	3LoCO1CYoQvsUISDSvXAi0pVyTKn0wrAa0iFNaAmqVLJoI3slMc6bqy2YAd1xpLS4SE
	5HnNL6BrCWv+s5HT5G+8UdtKnF2Ms1+rMs8pup7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d20dcde-8ca8a110-c28b-4ecb-b576-5e7bb91be64d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 776e7890ba3f8d6bbc142d44a8719d985c5c9f6871212dee9daf587e40495182
Date: Sat, 7 May 2022 06:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651903618
