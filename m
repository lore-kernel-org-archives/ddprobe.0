Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525DE628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 00:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654130159;
	h=To:Subject:From:Message-Id:Date;
	bh=coXiCWVCYm41/zakizcRZzyc7RfZPJEmSGE3kDxQXdw=;
	b=eZLDYK+VAaP8YiUZerWZh103NI9eln7ye7KR0WLvWHdryonVFjsTDrHbEFn1pV90
	Cg4ck3ztdu1IdC07wZtznPQIV1ODqqXjSCgIFrqxYWaSvByDLcTYy5eREdMTWvG53Jr
	gz2LWDEzdIgXLeRQFTBtx+CtzX0z1crNx8ztNAhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654130159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=coXiCWVCYm41/zakizcRZzyc7RfZPJEmSGE3kDxQXdw=;
	b=X81Gob+VnG8EQtOJekyTn+H8qswCo3SdbyYllW6G2heuRZAXtpm7iaLBapBUoeVC
	Q3r8INM9AmFaFQaZKDnYfQS2mkF/F/xbHW2F+lqUfrRRPqciry9NcJO94CXEaq5bRaJ
	5803K4V6HT46Rr6/dXFROreT27uW7R6svPSwoiPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018121d72ed7-37c1e4f2-91d7-451a-96cd-b1cb8ea16f09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c41758aedceddc51ead19c9e4600b6dcddc596a4387acce3165c67a9e6942f27
Date: Thu, 2 Jun 2022 00:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654130159
