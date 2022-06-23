Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6604923A8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656019612;
	h=To:Subject:From:Message-Id:Date;
	bh=ox9E9JCiLfFaFXXKbgafHoXKC+ILQAlMV9HMcBPKOF4=;
	b=BiBkUzrb2PutI0GDTljd+YinqoyCW7Pyp6asNVyxILnsgsHsIuJXsfmSgv7NrFpw
	BAw8e3mniTvRPqGLrkB9CT19hIXZyPpgQijeeWouh94PHIXj/Y3JmaKl4aQip4u+s5g
	Tt8h0QBNahM8xl1PimJlXyWFcvcpTnpaGT0uAvbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656019612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ox9E9JCiLfFaFXXKbgafHoXKC+ILQAlMV9HMcBPKOF4=;
	b=SYHBYKP7UkPS/sxb4MPyU9WozYz2st4C4Dy/SFY3ryNUoiWHjYJ0RmQFheLPPRLG
	OOUbTEtliLKpo1IlzMaC1C2ec/Gu4WC/f+467J7End0j61wuLhZj6gX/HookmWZoPyL
	1yMFnJfCWRptrTni5bovAktC84+i42Q/lOPJUlqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819275f29d-4d1f2b7f-456c-45f8-b259-ff6efa14bc2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fd6548d1ae233ce7dabeb51727f9e666f647087d7ddd867102bfbe91488c559
Date: Thu, 23 Jun 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656019612
