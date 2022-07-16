Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283117A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657976812;
	h=To:Subject:From:Message-Id:Date;
	bh=VbGp/AoQK04kIDA62zhxfVfWopg5VSLoAYHVUinruM0=;
	b=SDy2oh/TrMGjQKl1BBZTvD4rVTdgbeyMmV+bREPmiXHoxNpwQ2zwZHUVuOe7DZgJ
	tRUClAFybbFhpfnLN2V1JSBbxUAZA19KMq1a2G2XpSfdYFa50wFFLqNvH14vCyT0y8x
	wP6Jca+TMwiv0ACn28M8uvdOSQHVI/mNg2cy8YGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657976812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VbGp/AoQK04kIDA62zhxfVfWopg5VSLoAYHVUinruM0=;
	b=ESGYqGL1+dmJZBk9ztfKlNj3gi3hl+yozZNQP7Ni64XB28TdaccMaT6CrgRa3G5j
	WMMbZs2iJIKFvSBpSErSeS0PQoiFE4HS0K2pFCZs44CF0HuLSBVO4EmV/rivz9mlPmk
	1f2LIP/3nkOKGj1YAFLxTe4W0Ttc8OHeczduMOpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182071e72cc-61210fed-b298-4f7a-a365-f9fc89c035d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c39ca4652e0c1d181d6e7d7692442767fe57935510e265b5796bcc68e8756ed2
Date: Sat, 16 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657976812
