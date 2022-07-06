Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEBC2F3A
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657105612;
	h=To:Subject:From:Message-Id:Date;
	bh=JUabmW0QYCQ/NMkiV0ADIxprHRS6MFQ9LPXuC9JcXXU=;
	b=aKFa4Y8GGGacEVOWabJ6C/MHsjx5S6qi9ha6mSlx5T69OKbei9j/+7Hq7eOqItYC
	RFfGVoFRZZqeHFL+BnKoVxadD+5HAHnlZRSNJUPZLSqxiU1w+ycKlB21V/zl65gLuYm
	cb+5mlTyO7uRjc72po5DOwmeFZfLBAMNHwJpCRn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657105612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JUabmW0QYCQ/NMkiV0ADIxprHRS6MFQ9LPXuC9JcXXU=;
	b=Nt9iYTiqSlEHnmEnvXACPPX3k+gRfyR4YXXhFg2Y2vuC6/v/eFZfg072/ZVBknik
	d1/Z76+9U/R6sXRy/CzsuRXi1atLOcup85sWrSmGuYi6EMZreUPzqITttqeaGW+p6bQ
	HJwtZvrxSDVpn8DAmw2Xj4HEJxeueh8k6xhnlRSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d330fdd8-964ac1a2-5f56-4876-b294-5338c2a75e45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9b35d187853c016d082beb1df89c5675a91695bb8e180a03aa0b5028442cef3
Date: Wed, 6 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657105612
