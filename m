Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815B74A02
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660261253;
	h=To:Subject:From:Message-Id:Date;
	bh=7yh+rS80UxBZwrhcnOSApcaWRZgVIl++JUdhUOfq7sc=;
	b=ZUZD7BhMFZTbVGpu4Lx7OhgZZpaMvP4iJL5e2u3vUcYzbGAv4a/MyVplAPxDqfRn
	uZn4jBZW0mN8jy7ufy0mp9V6lfCQCgzgK1m9MsJSOLO+UR/1cdlKDlrGVfxr0jQQ0ZJ
	R54S22neUt/CmpNGTLrG+9SLZyWqkDJ4qVRoYH98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660261253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7yh+rS80UxBZwrhcnOSApcaWRZgVIl++JUdhUOfq7sc=;
	b=Fi8gkyuzp9EybokNf9FnJ0+Wz1CNQsATI+9aoXEp7wR6Ph+QPnIHRwq+w044llPV
	fQS3LoFzThUssTK8usQ/k94cCbhLaT+bACMVd2qxKuqI4CODUb59NhFXTj3LoiSSBLL
	woooWqQIV97wAU+aGmhk82YkIMq6h+SJnptBwRZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828f483e2e-8218e555-6f16-4465-825a-131b7f101e31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d21260950f881b2edf50156e0fe5707b756f4bce05e37569b8e169537e2472d
Date: Thu, 11 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660261252
