Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6F77E
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 18:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652897879;
	h=To:Subject:From:Message-Id:Date;
	bh=QcVRgtGndi5xHa6Vz/VcSVOIxqFVrjVaaEuflfBVaxg=;
	b=CQRREzZOBy1xbWxVzx67qBapNjQVZiKl963/QYJQtc4bIQ1AxYRC16bckFttcWJR
	G1CdpZd4E9HatLHktsZ13zY6GGttWvubtgIoOOkroi39sy8KZXgnd7Z+5p9Aq5PEFGd
	XpujEVvUSNgY6KOfTrOc86RzUeCxyR6IAc/5uM7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652897879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QcVRgtGndi5xHa6Vz/VcSVOIxqFVrjVaaEuflfBVaxg=;
	b=O2Z7yJRNWKSpmz3Ktw2nu2+kC6pqNFhvMCsXHQ1DaN+31tc/Abic5+tzybFMmnle
	CERoGljtO2hI/rARM6soTFNEspKSX4r5xJ9RdtM7N8KPBhMdIvEKo0G/cmprJp6CTVq
	I9FafHGmcVcJKI4dtc4j+/HGKQuQYE+fAq2jXhjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d86414e8-59ffc3cf-05e2-4479-be4a-60c6d4199540-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3cb78d2fe96d46cf845b208acbbd03f378ca54b848d89647d0904b8a2a8022f
Date: Wed, 18 May 2022 18:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652897879
