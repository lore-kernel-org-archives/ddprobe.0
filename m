Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DA37B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 23:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655594759;
	h=To:Subject:From:Message-Id:Date;
	bh=EyzX8+gl3Hw7b3M5aXSAMIyyb3b+5IFeBMG/4ffcoZw=;
	b=jvag4iM898BG/XR5mIdnDhvuDvYCYyU+gCWlhFD1SeQANw3b/SPQSR621k5UjHQI
	TsqCY24WFLaR5NXjCVkJzJVk91rHUXj1AjjTq6Pm5L9lc9FatFXjQw/X4uwMyofPv8c
	DjLnU3bgUgcVd5FMkX26lfnh+5p9a23+slcCJzgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655594759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EyzX8+gl3Hw7b3M5aXSAMIyyb3b+5IFeBMG/4ffcoZw=;
	b=dNTZ/zKqRhlGNLsxnbdVLYvU+bNcaZdYYcuHEG6Pmt4bxlkIPMgJf0sRtZSD3hTO
	4agkm83SYHV9GrshKDSGcGzXAfWcVZNnjwWtrjwwZiWfxEy840GZmlcVQI5NdbLWat/
	kZeZKzzeg39yhOv1zQR/isK5ea8jhf2lnquHAU0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179233476-11f3c98b-016f-49b5-ad63-d218d6dc54af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 946ae79cf3164c63752f6ab06283e721554326b78215eebfbe6bdf7d05df73ca
Date: Sat, 18 Jun 2022 23:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655594759
