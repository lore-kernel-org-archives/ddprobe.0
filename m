Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB27423BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 09:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654509179;
	h=To:Subject:From:Message-Id:Date;
	bh=CdByXsYD/3n+Sj+7n2zn8qEnNDhow/VFj/+PhjKMQN0=;
	b=DSkfopFJ/O49uClPRZ4STTrOeaOX3+87DJh+4OcMT+Pc8UNOiWILzmj54JYXJhPZ
	/D4k5DrCF2WzscKIh9dZ1b5NNHAOzZkHfsb7fmdVV0fp7nqaMGABqk6J2LsivQEpNmP
	lpVJHkSythqNo4msnjm92SoogFSCRJpIH2BlLVfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654509179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CdByXsYD/3n+Sj+7n2zn8qEnNDhow/VFj/+PhjKMQN0=;
	b=OrwcGJxNBXC+HY7KFeLe36O/0wf13lUxovjyDcV/pMaBhOjZuedFmmLbeHwj+cz0
	GfBDZvtuSB+JVqjQdTTFKSks2hWQG/chYmVN8T0YpZ7jYwBbMsbcHKMn7rkPAMHNe3L
	pmuS5/Gp8Oze+k3nHMsfwuNAJHjhRjfX8UjlSa2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181386e916f-aab9227d-dab1-4d93-a54f-4acf973b84d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cee9a5a8be2ce36c154035721fb19c4976dc7bdbeb0b833656023713a4bc5c79
Date: Mon, 6 Jun 2022 09:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654509179
