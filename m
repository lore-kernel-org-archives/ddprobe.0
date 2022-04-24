Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9E63201
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 22:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650840598;
	h=To:Subject:From:Message-Id:Date;
	bh=AT+unkM4xnjy2/yDfmNJ5nevgV/uaujDC+QPTnK7Hyo=;
	b=QVxxI8D+YIJlwPNfAuoiOUxIWSmuY+UO4r3mekm0QlK1VMK4eZIeswm+iOqmCILD
	hnHH7m0w0yXg88oG6ehOUI9/EexR++mShtmTv9kmH0Jo12BYn52gSYzsmhPQyzPmUFm
	3PowZBJzdO65Dk11nM3zStCvdru0V3vJm0rVE+A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650840598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AT+unkM4xnjy2/yDfmNJ5nevgV/uaujDC+QPTnK7Hyo=;
	b=RdvY37z4EzYkUOCnc2IPdhIh/QXw0YtTlPzU7P1NzKyejMPiE+CHZVOVcnn1qqC5
	VXFYFJSRPujyms3WGr7DwQGnmPkcvEB4chb1H3CGObnCqyzgCPK3e0J80m3+qORmgpV
	2EE7k204TCz636fDYQ2BvGgVbCXm1BhktaIO4mYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805dc47738-48d521ca-f670-4499-b315-2bbfd683daa0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe58197122a9a0e20dde05ab54a66bbc1818a2b81504512afcd51719a1912cb4
Date: Sun, 24 Apr 2022 22:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650840598
