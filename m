Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BF8210B
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652432579;
	h=To:Subject:From:Message-Id:Date;
	bh=kl+x8V3OLz/PAoQ04aQ19CdnbWhBi4wEMmJpCe+Pjqc=;
	b=WaJuLYPqWiqOUupCnPz76EQtP4v5gfpb3EGRvpGSEtd8vK+hGXlwb/qLlHW6T1pj
	vQPv3/J6mcMxTaJvpcOVvGQpvr0YS5ESnqfnZpwNUTjjYnpwR+ibIzxrTRPIQdVZJkG
	XSEiD/Xog7MAcsXXtNMjlgdTFk3yPq9dU3d/GNIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652432579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kl+x8V3OLz/PAoQ04aQ19CdnbWhBi4wEMmJpCe+Pjqc=;
	b=b4n9n0FJveqrxk4RsCpV/JCiQas2RY8fRNJ9nrjxQ0I6P0N2Sd3OfqlBWoQVIWwd
	2jttUa1IDHsyA7GlCa+ruTAuPIWFip9XDuyDwZJdCJS2iyKznt9YvuwryqXzr9tUDk6
	To+zyM1KhtZqzgOJLxUuG4SDFuiqxCEYCCwDTxjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bca82ac4-a16e543e-d78b-4256-9786-fee2b5c26e80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feec721ed450d046cca9af72f72d4ff0d14ec14ca8c3de9ed883b1234f036c80
Date: Fri, 13 May 2022 09:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652432579
