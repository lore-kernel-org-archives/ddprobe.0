Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0338A20E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656301612;
	h=To:Subject:From:Message-Id:Date;
	bh=uAYcxFtXob8Y9AD4zjVvpTxNPInmFo+A1c3kosju6D0=;
	b=ipA2Q4m6zqpf6TPvvWrpSoQI1YuCmY+LpvAQQmVvoO2F6wFvTxxrbloNJxShWiwp
	2g8xk/LARlT3bBdB+oWmTApDAZ9oVt46WoZfcAPevd7mOixArCnj6gbWw/9EJtRt8oh
	7nT51LLoiEIxKIxRCFGzJBmrQOv9k75pe5S9wIOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656301612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uAYcxFtXob8Y9AD4zjVvpTxNPInmFo+A1c3kosju6D0=;
	b=DAhxTA4M0idPZlgYLmOiovGlWDHZL70jtcllrmWurjpJZiXOmW2ZFR0WnvLcQsmh
	nPbflp7ZT3Y35P7zVyHL7pOJoPZVGBIL+ZXatDTBFZTFsRZ1Zs5m0Tv+QjoRnIVrSlM
	jwfpHnsPQND6QHmu5R1DuBbPbkyBxnGeZhFOABbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a344ece7-c44bb89d-6939-479a-a65d-f779445bbf91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c39271da2c4937afbcac41b4cd3e47f1229c736c90fec3b87d6fd15b5571ad6
Date: Mon, 27 Jun 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656301612
