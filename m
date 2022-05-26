Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DB01368
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 16:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653583079;
	h=To:Subject:From:Message-Id:Date;
	bh=CZWNiwWsGZG5r2ynUOuuv56lJsdWhlGBKDvgmsaFkVo=;
	b=fIe+YPtc3uu+pwFTGSNZTI35PTHg2O6yy+r7+kCe+yhOrl7149cmEBtNaBEy5bJ2
	pWff2tV95C+aVEREJLHOnXsQXKy70urZ6mGxcisvKhVcFh3NcN9jZKI0S13J2+a9nW8
	LGQW4kKYj13URb3IhlyNbehS6TBn46UV4V73+VPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653583079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CZWNiwWsGZG5r2ynUOuuv56lJsdWhlGBKDvgmsaFkVo=;
	b=k8li3e4735if3d9gM4bpWMD9MisC2xEJ0EG8qWnDvluoFiBRSd66dC7WDlRrMPlc
	3Tk4KODdzYlQ+0LrvV6qEEj2P/ogqdLegdHiJfxldZbXkaxTIsSFxcK1Q5slRW0822v
	nsCFuffB5Q6koOQ6RdADplWJcn/h4wXLd9PTlHSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181013b676d-63a0bff2-ae08-4492-9f9a-10da2c909c7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16a1625456f462a0c624e09494cf8e0345846e8105eb30a972121f83dc248c5d
Date: Thu, 26 May 2022 16:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653583079
