Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D972CA5
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656886612;
	h=To:Subject:From:Message-Id:Date;
	bh=MByARZyxcv27zc0sRwGO6Elsdj40bW3h23LiskhmZ3Y=;
	b=GBepg6iMa1eQvxK/Ocp2Kz7KKZQAA2m+W2nTf8apuvGrHVqXUuFqQJm+52afZpWv
	T5VWlC/tGhCnntSCpCVZTTwosyBZ4OxKPv2MInK5114iYDM657MgLUZazrB/ufM8R9C
	5vJcifyFGMA3e10tAq3+zIVpAaz3sguQC3/2uCFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656886612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MByARZyxcv27zc0sRwGO6Elsdj40bW3h23LiskhmZ3Y=;
	b=ItXgBjYMDI5S4ZAdiqE5Y4iKKNqRqU/3WZggzx4LaMO5577bQMD5fkCyAutJxWFj
	ZcGgTfFQU6O80P9XPe169k8vDqf9OyMSEmczD3gEuf7ZnO4H5/tGedhadhMzFyHmf/f
	XF+kPZblnpCDdWkhGfBS1oAmQh+TafnUNIsG6re4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c623514d-c6c6dc4b-e49b-4ba4-a3cb-80b6e0616678-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93cebdbd08f49d1308cf26489f7c4ef7c4865e7475e6a4c82949e7ed86cc9155
Date: Sun, 3 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656886612
