Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287CF5C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659304252;
	h=To:Subject:From:Message-Id:Date;
	bh=PXVfIqR55cF7NVPAGfvgsqHqmjf0Zzd/32dM4M4UOYs=;
	b=QNgDMw8T6SwDAQrutICHRTfpxqtx7rTHAfgetIjJD4N+EnJEfKJt792HTwINCdAO
	D2OqsfMm4Z1Y8HgwRdM28R8r7opS9vuSs6flTYbbmwp6CsTjYJ6td7rN7PpLhvYD2LJ
	5svlwErITloEY5+1WCtcHLxdc5hdwGOJeGl4EKRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659304252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PXVfIqR55cF7NVPAGfvgsqHqmjf0Zzd/32dM4M4UOYs=;
	b=Pnd65mmD6NhXIwMtTDLd5AjSgcEgRRyZXQQUrOmBvqN/fbDovwfVrGrmP++CFgVm
	lcsxNpwomjTSAbPIdY5lxwGvzlWMuHvBLXd/72sm+0hMJ5FK33m6WLu5k8UbR0wSwWM
	y58s10ZZLNoxPATBEyYIpgbORwBZsRD31V3MBlI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182563d9483-104829a1-fdd1-458c-96a8-7cabb37f850a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc1d4bcdf4ccc856739ea1775a053fae59c4c136be797852e0ea58805f9c95e1
Date: Sun, 31 Jul 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659304252
