Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F331872
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660570252;
	h=To:Subject:From:Message-Id:Date;
	bh=4i5T2ifKQAw2zXL6Nx1EMH0SIsVSMeUzuVD0TfsWETY=;
	b=hnmO+xmVMQJAxagUPx1evzNfienS1ITKx5lNKIxk3hvd6nRroXh/qYJvIMxdgW67
	e3D8gw7iD2iMwEvDChlRNOeb4tOfzMAQGpvcPZSEAvR68LPkPxrfV7n3tuas5XdHhHw
	L81jNmXHmAHUxW/xNjKWDB2kvqtMCAHlz9JAhifw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660570252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4i5T2ifKQAw2zXL6Nx1EMH0SIsVSMeUzuVD0TfsWETY=;
	b=YZGWAjgEJQlGLwJWByQdHiO2Vn/A9p7NbRP0qKDPhikwFNgS3fcVKYj/9F2mp20P
	hUra5gMPg9hCoojsiJ591kdUvpbst+T7VP5bmXDneHeCAiOGS4PdcyPZnz3760VmTPL
	St7SvKR3IYx4khe7v5/hSzwgwCBp6o8e1tim4BEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1b33536-e9f63aa7-f157-46ac-ba56-b61414c5a663-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ca4569e5220b76ecc49e46efd2da2d1fc039613576c35a7ecc14ee3856c8d99
Date: Mon, 15 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660570252
