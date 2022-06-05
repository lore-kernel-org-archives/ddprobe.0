Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158A623C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 23:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654470119;
	h=To:Subject:From:Message-Id:Date;
	bh=a83q4IXfmZ5k/Zu02nq1QfttwiCXoSMF8C0J+0HrSSA=;
	b=Lw4Fad7ipBO39kPFn+1jvFj2+Dp4YwNPEOUkFV7bbXN9tJJtE/geIrUI2qv4MBvA
	mX/ly7XliISN9F4SEJUNtEF4GrH13E4UeYWy7OHTvxaDMT/Nl51FvQVXrhj9YnAnVCB
	+C4Pt1fGlyVuBN6PPpkmPSsk5I2gToq6Lh8UwkWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654470119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a83q4IXfmZ5k/Zu02nq1QfttwiCXoSMF8C0J+0HrSSA=;
	b=PaifidmYAa5s2iJ0gd8s2r650JFGLh1yUamDohM99GUCOcWvevvuBBHAv7/YrYgu
	NR3h2zJ88tnqsPOuv+fH37DpSZCCnNli/X5epeYt1Msv+y+OvshqOY/w/XEtuVoddce
	m2JfFRd/8lPt46FmivtuS67o8eJKW9JnsNZm3epI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181361a8f5a-f46a5f3a-bbed-4e3f-9bdd-9bfa742f015d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fb2e4702234bf46b57b4c62dac1a4e1092ce72dd6d169eb8681ad1864ea0c79
Date: Sun, 5 Jun 2022 23:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654470119
