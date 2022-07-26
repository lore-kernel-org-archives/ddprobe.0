Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98E67A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658825812;
	h=To:Subject:From:Message-Id:Date;
	bh=TOOmM/IYz0FqHG041hZmMSs3mofOB1v2wZvnlCF0dvY=;
	b=NyIa6CoRFWlgxfBU0uMZc5cNSLNbRH77EmZZ6DFm7vvmYflfDG5BPFK8ebkSehE+
	wkiQXVRSgUbHL8zFrOYG9pLMSSzBU0d3wxHSe0baOTPygPNjzv7cwkGAo50piMLC6z/
	W2xm7ugr1o+oSL11ykvTuRUDNfhWFFZNiX389X4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658825812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TOOmM/IYz0FqHG041hZmMSs3mofOB1v2wZvnlCF0dvY=;
	b=hB1/4H5/Nizu5vnMlbJs9WcnlZwRuR9GGxFZ9TzJpDxZKsmtmtEYBg+QkLD4tgKH
	mSCvIKow0O28pqo7pxAiXYQZIDRlMnSHUIbNK8nsgSL23J505SZl+Z6eUj4u5vr3rKk
	mM2BtZZQlCfw2tyapPhfBAB2mKg6ASPfEW8MFtJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239b92935-e97d7fda-e737-4933-a570-53238650256b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5792fb66f2a2ccd5193f69cc2c026195b2c9b8fe4c7b200724c890b6988af52f
Date: Tue, 26 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658825812
