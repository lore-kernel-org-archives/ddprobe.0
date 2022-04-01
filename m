Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACC17B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 23:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648856278;
	h=To:Subject:From:Message-Id:Date;
	bh=4YYqodJyxCjskBAMPzAynoNBhXCE+ePqH2yiIaEdBFM=;
	b=ebG1bwUn9JFWG5sKVcGfNTTla9zfct34qxOiqS639tSth5bDxS1/YG5CwkbpqRKw
	LprSFyPhGeVF/ymnji46+D8zv5WUaZsIXahtXj5w0mdkHeOitk+zWVlLBL0XeGDHteH
	Dzy9d/61GG6O9i//1cQJ++pM2kfaR1iIt+xxx6AY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648856278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4YYqodJyxCjskBAMPzAynoNBhXCE+ePqH2yiIaEdBFM=;
	b=hFUGgaR4OsK9qZ4gi1UMRk75ErFRD8//+WXmB/ZSVttHj/Jc3OvDSy1iZTKvTr9x
	dftlU22LUJdg5j5OMUeCXA+6+yRVo1CmDDCDCX8yERxZURTnol5TbClZZMsFIAubopI
	1+3AXYDK1g76+wsLVCaMdopPWl0m6lZGEyEK9How=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe77e24d0-1ad920b3-1e4c-46fe-aec7-ebef463efb55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 799f9126f6955ae5d750841e907e3469ab61e3c811ac303228adc4ce6d9d615f
Date: Fri, 1 Apr 2022 23:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648856278
