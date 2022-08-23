Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572F0A3D
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661235652;
	h=To:Subject:From:Message-Id:Date;
	bh=UZbn7uOOMUctpX/vX/vGYrinrpi33ez7m+MN1tLioJ0=;
	b=LqWOsHoMrf+VCB9GlIahw5fKpNFBKuISZv0NF9SXMwp6ehPEXEucJ/L4Of6oOiK8
	HTEuZFafxoUwSP7TUFt0+3gZpq6DXLyq2DcgDoYPwuhOW2nVtZdj7gIUF4VjeW2DoEO
	HQNK6dcmb8FpoEUg8v5szqNK+iE2V/oxuLBfvR3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661235652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UZbn7uOOMUctpX/vX/vGYrinrpi33ez7m+MN1tLioJ0=;
	b=JJIVo3t4jNZLj2C7REnEvEocmYaOOTWs6yKhFuzPcxOcD90GGAPuHfQy5/mNtIyz
	A4tOYemuAKIpKHS+cK95pMGah5Aj110rBa9nXZjI7ZDD3PVFOVSivqm1k7P4HvigSb8
	bcQAHC4Pk8sq7Dp30gmykGg+DHrkpts0FDvYrDng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c95c67b1-979738b3-d8ce-4225-8ffe-dad9bc9425c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 892f6c8d1ee07d47b4dae2ab5d21681a5b2e719707b99236c1618fb47fa31cc1
Date: Tue, 23 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661235652
