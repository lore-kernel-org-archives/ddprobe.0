Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC6B20F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 06:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652422019;
	h=To:Subject:From:Message-Id:Date;
	bh=9/OhMMdie54cdR/TiZ9z9H1IocK18dL0rvw4GGiC15Y=;
	b=V5F+26SW9xQ8gkPcxL/M7g3EV/9QK+8j2Dz6Dq2NCrKPGwXgbsZKuMEYWZNV0lqc
	Irxf9KlxyhnVPf2vk9ZNM0c9lfpHHLgd/dQ3rTF8lVgWEi5yBNH70hMjGQ/SoXrjYz7
	8krM4+8hRTjNnWMgU6r8/v4x/JYCdXvXotwFhMZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652422019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9/OhMMdie54cdR/TiZ9z9H1IocK18dL0rvw4GGiC15Y=;
	b=NAFsR0DG4l/JLW82WYJUt/vGtPMKGjNZp21KYLXd67q9QFB+xvMV7lzsEkrmWJLv
	E9BMSWkhmoAPofIw3oDb8If9a4jOQ8wX7LYt2jGrwhmLJPodQZ77fqBHTY75t+5qW55
	K8FIcFZ/KAB0VwNj14hdrQ0EKI/3q82KR8SEn3p4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc0708d2-45353df2-2855-47c3-b546-40445fb2032e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b091aeb54da7d35807182d8c8f33838d18ed66d76a06b9fad399b55fe93e9e98
Date: Fri, 13 May 2022 06:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652422019
