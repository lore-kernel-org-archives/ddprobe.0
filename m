Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ABD7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659786652;
	h=To:Subject:From:Message-Id:Date;
	bh=9Zfxwf+5uhqAY8DJC8PQzkym770ELuoVfkFug6r88JA=;
	b=SMLA/wcj+vCHaAf5r5OEvsyhCexBlueLu9tIG4rMR2UuLwsb2/ASYrIprBU7/wfo
	f2+i125hCpJKoLNC5ANzWM/pZqUe39BBCIYGSD5sSFq9X046fXnb6QE3pM71l0DJWdo
	xmryG2kKCgZKb0F5OgDitPmkl7ZhunBeYtbeodWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659786652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Zfxwf+5uhqAY8DJC8PQzkym770ELuoVfkFug6r88JA=;
	b=jO7igPcLsfZlg0pAzn380R34ZAskCLA9Kdc5DagQLwCjoceK6Y0xCaYvB3KbGvqo
	y+cjm4q1miJQ/Y+WSXbmKdtbyDwAER6M/NeNp97wIBBjCY5KV5Jwdxv0WQgfhzNXGXs
	r8igvvoRlJla6Mkksc4UKHuaRcyLc6cksqEH1+HQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272fe6bc4-e0eccb91-5876-4b7e-8246-e373c98f6e7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71852788f039b1769ed47db7864b15db76da714dfebab5b05a208c47756a8637
Date: Sat, 6 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659786652
