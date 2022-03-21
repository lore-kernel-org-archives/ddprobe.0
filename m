Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEF757D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647877285;
	h=To:Subject:From:Message-Id:Date;
	bh=6TXOODMUVI3gynp9Jp8qasvLFpBE3/r9ZOt8nfJaffk=;
	b=YMMm4DtjfS6Aam0o9hfjRjb3ccW2CpUuVDDG/+LL3Rpdt12Q6r78+h3HHqo9Tkje
	9hrxGBF+Xcv1FjgmIdft5sFLSuEaC2gTazkLp94Cq8TmboCtsoET6rMAv7UAyD2GeUA
	4ljMiu1u8/LEYWLgh459Ej8t9Cm+pml1SwPL58Mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647877285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6TXOODMUVI3gynp9Jp8qasvLFpBE3/r9ZOt8nfJaffk=;
	b=Qr6+KeI5xPxavCuHlK9ivNVf+h0knBFN9VVW+8w/dqIDPaLH4myp4HUfolVraprJ
	bmrK5/R4HGe1s4ZPzc4oZfg+RtGB+l0T5vyyOUF4jdwqb5xL+YwAjp8bBSAMjq4eFar
	VbKltMqcla7y2n0+NwN5mbS1h2+2aIzdSaEUgt/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad23e3a3-adb97a8e-74bb-4948-863c-787f492077c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2da2bad7dfdd10c1a8af5b6a947e084a6f275221ae28a734f2e67fc4892b60a0
Date: Mon, 21 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647877284
