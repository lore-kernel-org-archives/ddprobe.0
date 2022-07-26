Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48369621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 04:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658809012;
	h=To:Subject:From:Message-Id:Date;
	bh=w7Mwzh60CoKWTZ/GWxmgE5FOiUM/WrWFIhahy6wptUY=;
	b=Wxrfh9M6Jb9RTtqLpEh4fCQ25TEOslk1hxODRMTgL0qn7udYTfjHdbODkjcVYT2d
	nB4bUvX8+khoYBXmHLZi+s0OnEX1fGx/03uSIuDpQtyv13N2aYsqtEMcpK7q697SBDT
	pj7MYOnBrm/Y5ABTOKPO4JM/6t5fFwFoVG6Yv4MU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658809012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w7Mwzh60CoKWTZ/GWxmgE5FOiUM/WrWFIhahy6wptUY=;
	b=FTKzLzA3KFkZxD14w4P4aNIPXcJigVHhhnhwMYj/wOnv2rgopzkkTuL2IrA/TMLR
	HMth+2eAYr78JxrLdsqCsSP3EpqUT1Zn6et7l3WubyvFcNLWVu9135Yw6JVL9YjStse
	MrsP5q9AeY57Vt/zF/8IONfj+SqnKCXOg/lnm27s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238b8d0fa-4cb7c5b8-c6af-47e0-8d1d-bd219934e0ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ee582db0f27a18a986e29aaff7f376b9f381b7ba7fb13544e6b29a079cd8ac4
Date: Tue, 26 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658809012
