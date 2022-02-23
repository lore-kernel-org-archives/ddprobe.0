Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E123BC9E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645634785;
	h=To:Subject:From:Message-Id:Date;
	bh=IaQV4p8/DPQrKEUtgKyj5JKp9zPvXxQVC+UQ+817NdU=;
	b=EeYHbQ2DceJYvgq2DIHsCRP5PAzh9ICrmVaDK0MvDz7ortODuA3hSCKALViWUe9f
	9oX2vEfHB1mg9TTiudVGQFEis27D2xrXZuBXG6FnzeN8wJ+kia3NFYXYCeHp5iRo4v6
	i/KaqBYW3mQedIg7jxO/vlzmywA0jXf8MNS5DJ74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645634785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IaQV4p8/DPQrKEUtgKyj5JKp9zPvXxQVC+UQ+817NdU=;
	b=h30IhExYG0bpSI78rQdDDCX4uYJkHn/yJsmMt5osxlHxmUTRx/xf6EpX2qr621zr
	Cr6LnV90vV25KQcecwWRn/kiZvuGmq3G8OGVC92JNBcUN0RJuKN2D/VxDMm8wpznOnC
	tob8nhJ/UXGM/vm9Lfj4hhmCTcf+M2PbS/BTx/9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f277a0eca-9785b2ba-19ee-410a-904e-90bf84b43c93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5de26a5f946630883609ca37dff942cd624557532d95defcbe59f3d345532340
Date: Wed, 23 Feb 2022 16:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645634784
