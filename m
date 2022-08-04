Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C63F23A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659612652;
	h=To:Subject:From:Message-Id:Date;
	bh=T7P/ccrXI9g1FV9/HHkSMLookxgFiYs7Gak+eoDVq/8=;
	b=SwJlbpAw4TirKiJAB0iCLDOEaB2bIDQ1vrtDEMAHrkGyUM2kRP3TqfkkIee/PLQm
	Rt2krXQ7iJeM/hIm77Dhh4Jz+aw4Cp+/dbmArzUQWedbhOEx+bgzABcc2EHEFX5e4s+
	imEyCvMuWdbEfyAUfHx4ELlerKZFy0VkDInpOsec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659612652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T7P/ccrXI9g1FV9/HHkSMLookxgFiYs7Gak+eoDVq/8=;
	b=IOaiOIQc8Hmzo8nLnM5fKVFwxkljEDneKb8r+29AegKKy2eugoyAnGpal4cG65eu
	jkR3f7m88nTbq/C8sexIOosVM6j31TICGz4Y0g03As4gADLA6pDCxSzL2JXBCGiCF9y
	dQgekzWCp8XORE3GiZfW+3pTVEdzGU342aIS9cBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182689f6465-c34b621a-b507-472e-96db-477f2ebc0c45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddead42fb08b6904a74076d117af4c6d070815b073bb25f070efeb895ce308cd
Date: Thu, 4 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659612652
