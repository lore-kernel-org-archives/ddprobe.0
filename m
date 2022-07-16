Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2110736A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657963612;
	h=To:Subject:From:Message-Id:Date;
	bh=6bCCEjvChaHWmic51L5IGFnO227DuUEkSJjQLsf42r4=;
	b=e6NetXic3sXGym3MIwBHB20eOqdyo5My1FDd+ll350BfzS2XS71N0fZT9Lw/lZ5i
	tozuXJ+bSrjmxAZqmu0wHb/lBMf9FBu77uiKGCA7WGy5Epb21+cJv+h2OG09uI72SsW
	NFOHp5zzatD+l1x/vGzxvgla2MsBlnzEST4vJ3+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657963612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6bCCEjvChaHWmic51L5IGFnO227DuUEkSJjQLsf42r4=;
	b=UG8OijGIN0ekZ07Ffnb+OYKTpPSWf2f1QUFVCPcIJrhB46yh8lBZpgpJGa3WoVlM
	CxNUDcdaEHMEKinkwdI3BGseyZacwHoSc5gDa3LZsWtopD37a2B0oD0xsdv3eeA2Mpv
	dtQjUqJE3jfY0Ax7qp8TkGpA/iYbUF+zSjysttPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820655088c-2f7bcc88-b836-48b3-b833-cbb40dad2a54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb0616bdd66df4230832b1e40dd18f406227d2dfab94646e2e44e1c455cfc2cc
Date: Sat, 16 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657963612
