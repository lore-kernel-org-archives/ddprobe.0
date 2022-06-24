Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071F523B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656058612;
	h=To:Subject:From:Message-Id:Date;
	bh=AbxrFRT8azqZIM4pQ2//M+4ukCa2ZxTjwmTqpbfVVkw=;
	b=gpVddap8sMmnBhrbPJVAZdJaiuFl0CtpkpkKrd35n1LIzhF4tUWDWynIaCgYVgMg
	FsiaQf8EBXbLrXtT721XWRkmzI+eayDMSv4I4kSCD2kChvIiBMynKluhgKiZ8/32nfT
	x3/uT2numITRxnV40Ila1rrivg9ThZYs3Z2r2UTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656058612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AbxrFRT8azqZIM4pQ2//M+4ukCa2ZxTjwmTqpbfVVkw=;
	b=GqLEpQ/ILXDkQ+c2zcoyS3k3Oca7SOr7a1lMkA1RdJnHgW5i6iesk97wrsGgkPi5
	yQ+fXOiIfHb3nghT/KS/1ELG4a9avfvtygOIvKcgCChi6UcAEru9lLEy2D6WC6yyMx9
	gVikrK5zhPq+JynIuJFysv6MwO8az+3z9RGxgi6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194c90a78-4ae5a090-2d6a-43de-9874-098898f1a6ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3acd92d43a9a07fc0efee61181460aa506b6a2fe3489d6c4813e8b1fbb20f676
Date: Fri, 24 Jun 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656058612
