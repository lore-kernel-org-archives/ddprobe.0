Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D52CA7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657666612;
	h=To:Subject:From:Message-Id:Date;
	bh=8jpn9jObRvPksFUnM2jdM2H1SsLhKPEzMrhGnEgkZqU=;
	b=entmF8kh6AQGIpHhdMG27RjcL9UN31uBFADOGcvQX4T1/QmDEBf22dUtWS1p7NeL
	HRYitmmPIzzDHTSa3DlkrXJKFWp0c1IDRgWVqenznqrPinma/CmdrxTXjf864rHhhOX
	MKFRummdUMt2bv1PJ04gfiJN5pEdqFh3DUgPX5Fk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657666612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8jpn9jObRvPksFUnM2jdM2H1SsLhKPEzMrhGnEgkZqU=;
	b=auXPXHayW3JXZo94J7IvY5MXtEDPwFjMrt/vka6QfMAKdaTUyg88fRQJiozhQBRb
	kBaiVJGz2UcIhC9NwPR8kl4huETI7PLcUy7x0dNv3PScE5UnY0iEQaGX6tn71KiZGL/
	+X21tPZV39J0fkM/MXl9OL+lo/BE+r6jmvfyF7jk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4a12c60-cde67c8a-1888-4f7b-9af6-5b62450955cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 167d14b31fff72f0e12d9ff7c35eb997a2cf75e0bf8c9d7c58f686f670ced252
Date: Tue, 12 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657666612
