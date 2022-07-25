Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0775E4C61
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658785012;
	h=To:Subject:From:Message-Id:Date;
	bh=VTZkXuuXju+1lOpOpwKDYluPEKl2v2GJ0SwKAV8nXnE=;
	b=MZXSwFtxdmzocxsNv0620J6BjbINu6gAi80F80QUSlfdcIjjU6hs4MDX517l7CXm
	L08XsnpRJctn/z9u1ovX0KedW7R7gY0BdmTNL7eJCICpmMs4kdbX1di6ZaLtlWygHIf
	UAFAmFCIKysrrPtcO/9GsjW4Sq87k89/C303kYXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658785012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VTZkXuuXju+1lOpOpwKDYluPEKl2v2GJ0SwKAV8nXnE=;
	b=LeLSEPoFcbEjmjLAMNEaLmqd1NiHViRImfr1bMgIZKUu1Q+ooMZ5a4kaJXrTnXXz
	3mdEV/foxoZeP0QCiz5LsOHC1nhG0ALOOZd5QBKSH90O/NxTRAa48Z90Ah7Gp3zsGgK
	rISV3/6oVqL6hzj0FCZYjmT85zVTVtTcdpsZ40QM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182374a9a52-f079110d-1860-4c4f-8b99-adf9d6a4b19d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15677d10fb8b022b4bf739a9fe014267f9c4a8a8c646dea935e02193b0805189
Date: Mon, 25 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658785012
