Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CFE7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659782452;
	h=To:Subject:From:Message-Id:Date;
	bh=0gPQ673DcsC/p+nHwXGrYcPrM56IC71WTCQWV1vyjZo=;
	b=ArpeW9R33zGUTISOvT0ViqNx6mOSsEOssRZGVrfobA1l+2FVGIpHo9yf8NyT4GKR
	SAaLu37RIvnizmpnv4fNGHsqP0PQuU6VPObi255ajleU0EQ9yYov1ID9s9O/JakfwE0
	UTDVVGtTiM6J1X6mWMY6ZSadUB8laGgB+YHh2vII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659782452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0gPQ673DcsC/p+nHwXGrYcPrM56IC71WTCQWV1vyjZo=;
	b=LlRdIpEPPCj5QeHhRQsHwKTc/CGKNsQmuuXSwk+Oivau5MNdZX1ogzgey2hNfBlR
	HK/vWZjWTHPPIg8fr63iHZHfMKK58m+0dVOWukr54tPt3XFqPl0ybmRiU+N2PKyp4y1
	Wq2gh8WjopNoEVtjFE9gtRcqG/1EfRAF5Nlwv43M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272be5565-bf9f370a-c5b7-42ac-90ae-0deb90f95797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1033b6686fd2e03abbb558d0361b88ef87e617ab637a0dfb2f70f2761d0197ae
Date: Sat, 6 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659782452
