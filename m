Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48FC1C00
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 21:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655846879;
	h=To:Subject:From:Message-Id:Date;
	bh=WEGWXgn8mo1oshoe6LyDi5Gm6YiRfEhuTApCtgQ0wMI=;
	b=eiQooH/SJ9hT0y3uhFKUY0/b54wYJGWsammT4fIoPvnnceGB6HhZg/WBWZ2Hdeiv
	0JOPdJbAV78aggkp493jE/Gjtkvz5v+sY1nkC1HKpgEjlEnpp/lEOKkKvdctd0b1Mnk
	ndA9KujonVGfbbF4QCeT8pNwmzdzEinmvePgtQHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655846879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WEGWXgn8mo1oshoe6LyDi5Gm6YiRfEhuTApCtgQ0wMI=;
	b=Yk3AW9v7ggid/7VrdJwVHb6ax7KrYbgjWzc0sc9L+YUK+Vgiy+UT1NYFMRip6doP
	LomdC9iTQf/C70tgutoB99DHO9HY2A1GljFX1tlpJEVYFd3zk2Ndf/wMLfdMYEwdwxe
	BuhuSo3i1E4s8NbPGF+m4HTaJ9aGG448G2Bdx5sE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181882a4036-89e9daa0-7534-479b-81ac-dc1d5e386454-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3207f77714ce9994bf393d792740876be41ecc905fa548a2ddcf58dcd6807dac
Date: Tue, 21 Jun 2022 21:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655846879
