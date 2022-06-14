Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A147C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 11:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655207279;
	h=To:Subject:From:Message-Id:Date;
	bh=WRRW3a7Xm4q4WYiGtgR4fL7z03LPCWbJi2YeFe64ry4=;
	b=kFn62NCSFXPtQYEqIt6Kzy40msvFcfp71eK/8seffyD4lzrrVMnNZVPkugNzssFi
	XOPyqq01s3teqWtRa2WTrGKCd2sQFk/UuUtfQ30kos7MUN6vM8A7pD7gwFn0JMmLUBD
	WYPCmqLZJvmHqtuVVnSFfvShbeKPEp8rwraOTqXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655207279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WRRW3a7Xm4q4WYiGtgR4fL7z03LPCWbJi2YeFe64ry4=;
	b=LMllEM/vJwhERRqvfNBUbxA/1WXL6Qv0tA4ud12txotE700zSY/0TASK46uGbe19
	Hg7Murmoj6EmsoWtcViZR+LZRADwx1u5i/U/64RS1l0whf4yOI1qBFBeaDBsls6GBFI
	UN1O1pA/V6NvxLvWJPbxclcPk6Em3tP7Ezwb1TxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181620aba73-1f78dc0c-1ed4-409a-9e58-62863842f17f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce7d4456fb37f1e8759e411590745d66423266451e71ecb7edbe23a4854cdd3b
Date: Tue, 14 Jun 2022 11:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655207279
