Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CA633C2
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661104252;
	h=To:Subject:From:Message-Id:Date;
	bh=grgnc7mCZkLNAf0HVVfKz8zFfgZYv3igokx3cKtI3d4=;
	b=iBtCoYePC01uH1Nwwg1IviMnp7tIYseObiz/QOYOLF7e98BDcb24mwhnmIoGNHKx
	Fn1zZnNS5EItbI9TdCnaJU4FNfONs8GTVU/cPHh+7fVuEodZwAtao3Bv4EVTbVitSbv
	P8IGwXaAFT4Zdg1vlkzIii0a+z0CpCRNkqkcSB9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661104252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=grgnc7mCZkLNAf0HVVfKz8zFfgZYv3igokx3cKtI3d4=;
	b=b8KssqKHXcS/HCFKnGj7xSpMJwKW1iPDV9uyiw3sep2dFNPRwBORD0Q2F+Z58fvk
	/NgbvrLsSxyCu4krnCXVrHi+0aUcY20m/E6gae9q2j8Q8ffYt7PaGpVflxIvWh0i7Nx
	dVYVeXFTuX6AvYvUPQ2e2r1wQhOz2t9iCnJuKWm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c18766b6-a5ab03f8-cbaa-4e03-b621-24992f85dacb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82c9b0eb8eafd5603f860333709957e425080818c151e3b5d0e23d7fb24d7ea2
Date: Sun, 21 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661104252
