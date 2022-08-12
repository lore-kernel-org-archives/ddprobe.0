Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87181366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660272052;
	h=To:Subject:From:Message-Id:Date;
	bh=4+ceIGef3Vz4ynpMS3ZAOVnADA/7gWtg9jvNyaDR3gQ=;
	b=UaB79DKl679jJcGeSBuNjS4fc09EuMyDJ5BjYNvq88IMbHCy+acX74idOn/tbQrR
	T4q66zkMmaunefF0rHo78AYt0FOJRezxZoje52sHgoL76YRxy5IVScNnUuRqc7e4xd5
	c0rk1dBn+OybJZQ0RVIrgL/pqqqEXTZeoDdH73bo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660272052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4+ceIGef3Vz4ynpMS3ZAOVnADA/7gWtg9jvNyaDR3gQ=;
	b=FYk231PxO1dHFJ3vu1UBJCSRojkQRdMTJ4i39N07QPX8RsKKYVMYHWSAsGbDYYp2
	VXeG1llFSIrmGWEXrh/BVyc+4phftdZBVv7zgQgnY34kxYt0D/bF/OuFJE9rdoD0xKa
	hfe+WlV6fibXo9EQKqdrgYmVEKzzmy8uCtciJ5Bw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828fed094d-9ad13a1d-bfc8-422e-b0f8-abe9b75f902c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c89057f972a3a1966c97ff3837656f604ce39c109ae14ee093afa996367693b4
Date: Fri, 12 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660272052
