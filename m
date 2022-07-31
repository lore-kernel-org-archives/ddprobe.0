Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D6415A9
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659263452;
	h=To:Subject:From:Message-Id:Date;
	bh=vbDekY2B9RedQaCflGnKsfC9bhLqcNWSZFSNspOycYQ=;
	b=ZUrT4e1V1Ni+2mft1AeyoN776NS1qE0FBNsd7U2qZVpGQMH8tHUYI+EpfCOiS5H7
	H3CBfBuPU9gfjQ0moqqSF0Fj4Y8a5Xy6BtpNi/Hh1KlKP6JX7T+psBqcHTmZDJNywZs
	/Ajhjl4ME6xbS/a82X0JLRJWRXB0+Pg6ipLK8da4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659263452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vbDekY2B9RedQaCflGnKsfC9bhLqcNWSZFSNspOycYQ=;
	b=UnPMRXUvfnqidnSHTvUiihio1oKL3pCw4Y9C4z1SPni+C3fZAxpuDJwMvhjMbgSB
	SHFGkfabFkix14XZVld0pFdPtncROFiZdFohWvTLBbabZmdoarYckMSGqqiAS+iSpQX
	Lu95EcIf/DcWFmnNYRbhDvi2U42n+TYDtQFRg2xA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253cf0589-4a359058-3736-4b1f-8776-9f3abb2c8108-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0475c28a6d1d0a4532f04581d03bc89ea71f52fd152a9144c9dc45348610215d
Date: Sun, 31 Jul 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659263452
