Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4584A3E
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657112812;
	h=To:Subject:From:Message-Id:Date;
	bh=6mE08TvsufGIVamzs4VOHSOp46C3TcizTBhVdlLGhfg=;
	b=H8nLtLsFMN9BO2DpqvHToW2sbsYc/WkbbeDYt1C37Mzxj3KMGArZyjnBQuqf13p0
	k5jpSWV4joMFz3/tglJDQthO5lRYhHKNaNZm0OgbV776wnEZ3OphH5zEOfHsmOGaLKR
	dlrAqvXVgYbc2OuyJY7hAAYUs1Pd4RQzvh1Npmk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657112812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6mE08TvsufGIVamzs4VOHSOp46C3TcizTBhVdlLGhfg=;
	b=AcPE4BvBDT5z34HeC7hdXs5E5yWj/4G2JRaxRX1pSQUh7Sj5loDomNhCh2NpcoRN
	wQZ3VMQaAD3B1I6w6S+kLkcfrOKE50ahlTIL2dERvYOfKPZmB2weU3HSnD3SZYUl6k8
	4ye6J7IPPxoUx3nHTrEvkFWu+IbTXoZh6+wue7Es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d39edb34-82846a0b-d3dd-4ef3-9d23-21a3e1f972a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa8b03c2bd9fef61de0320fad13ef123868ae1652579315a53c7f00e0fab0782
Date: Wed, 6 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657112812
