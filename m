Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394502561
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657489612;
	h=To:Subject:From:Message-Id:Date;
	bh=5X/zFgHK4t5TbHj3yfZXgIfbVKD1hB+wMdSTAPj9cDE=;
	b=ZovzMQFmMzder/VrZDlHvMdQ93fTMVQyaBcIpYGcEBihuUid9d3rS5eH2ESAsD10
	jYDKRyAoFjsD1CUu3Mui0Sk8maDt9M01lwg/OYiDdoA0zf54NXTnQ9r+zr7cy/FVgiA
	nLCttn912NYuxOmNWhXFC+chU5giZaRb+jyZDpkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657489612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5X/zFgHK4t5TbHj3yfZXgIfbVKD1hB+wMdSTAPj9cDE=;
	b=jwIETSTS7HcAJ15l8l70QKupvKHvcOCCpZ8LyESaoPy7tiKMb5UIolkLH7iTSEV0
	qA68ddx532DCkpbyiIz/+TqH2CgPkXgdS6twQefe1BCA5pt8qy8cUa85NbeJrRXQc3I
	lsuGNvQ2OEIzow1Jfb5j/ZWglCzxB1CjRCVChr20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea145eef-8aca2ea8-b48c-4e0c-9a62-615fa8d1b027-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c17b8f3b8029cab7591bd6da06226b8e1f925b8a9830d433217d827fa31eff02
Date: Sun, 10 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657489612
