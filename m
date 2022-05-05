Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE381363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 06:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651733398;
	h=To:Subject:From:Message-Id:Date;
	bh=dU+a/uAF+z7cxgQILVWgU7SF5dppZTVSx1U6bWQEJFk=;
	b=Ijlehi19tIMlfnrJ6cmBD9xWL157vTkQBrKhHPzSe88iqodkMPloGM50KRjS3R0X
	DGkaHQDAyXtnW1HSS6R6BRGeCCZAC26sAExS8ZqyVrel+nw5P4P0xKNX040hrFkrR0F
	f+KrV+Witz13XE4l3xMS4RwReLLiTARoNx2kpjcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651733398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dU+a/uAF+z7cxgQILVWgU7SF5dppZTVSx1U6bWQEJFk=;
	b=DVL2HsJjp6wKC6f45WYP+Zec1bK9acGClUxSjnXzbJSQGviZ4D1dRhRTK3DJxdiB
	cDYBvaUcgw+3a5iCa8b2X1or5Xpb7jYzS1IR2cDTACCZVcjZIO0cBNWz/SoSGOXzPxK
	HX9ld+G54Aw/3Gn/j7mRIe1ue7pAQRCE9DS2CwXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018092fb82ce-1fa19f5f-b1da-4e05-b7ee-90c860bf9b3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3301d7ba7bf98b65b7fd8b530f0be80ead95150adca4b16c1e313a5fcb50bd0b
Date: Thu, 5 May 2022 06:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651733398
