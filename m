Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4475D362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656400012;
	h=To:Subject:From:Message-Id:Date;
	bh=RM0pdl0IIiMSQY+OKjhrF1s95q4OwRgB5+9nWbyw+wo=;
	b=QIy4hUgCGNTwxc0AJcY1DdzogxBy+UeTI4cctGhQ1TPiTs32hAnyQBEkkL32hi/t
	zZlRTrXWKbP0AQEo62oznSwe5lVIm0Pw3Td6OBq/UfmdKSV+u31WgEXlEBaKtxpWvV+
	NOSISDnYA9MxPjkI3wiQNmktmGnO9dZV9bNYuP/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656400012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RM0pdl0IIiMSQY+OKjhrF1s95q4OwRgB5+9nWbyw+wo=;
	b=k7kLH/GHeM5q+938bTkYDIMdbD1a7/nRkH9+GUtEYHMk6EUO2iaqjCrpEKhbSvvB
	kyeOnGe75w5PCBHKgvq/Ye+w29XG32Sgu+KEAt1PpRFohYeLriDXtZRWUGjjRAK90XC
	3LjnfIiwdyq+GtYL8Z5y6Qyd5PT0vNFwOcpDL/q0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9226434-bd3b191e-c935-4c78-935d-fe930cf7a32d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b2ef4f9c708c93e46bba8e4e720b526a958646057f441c4b8f9774814a320ff
Date: Tue, 28 Jun 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656400012
