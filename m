Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF0F7B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 22:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653862799;
	h=To:Subject:From:Message-Id:Date;
	bh=WYwkuGGzPQikkciFlqRjoBE8DDhLmlqdwwv8uIWpA1Q=;
	b=jR88vywbumQCka4r0yDwEzAnLEQdMXwN7BWFHxK/prEiEtBbt2oh9ZbP/z7wkFSQ
	ZID7PEGoiQN5Vcu25WZ3HzVYHOsRkYzaofi6kLTQm7xCNuHQmwE2UVTO/TAAI+CLcHw
	eSFTTb6lDWyRbyNCYylFSqLA7DjbCGpU2lREN3OM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653862799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WYwkuGGzPQikkciFlqRjoBE8DDhLmlqdwwv8uIWpA1Q=;
	b=iDYmUeg6FqCZTPUxBC1Ky2ISYFEbVjIS84fVOX8f6SEF7G+OMPM0BXjanmPtMPc1
	1OUPfYvTi80KhaZD2boVnkc4LmMALWiaaRAC4XE3AZoXkhsGGRk2NLJH0hdAUNTqB6J
	dhbZ1R0BCWdXZrOgpQ192zkdW99pEF6EJgbO4eek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018111e797d6-736cbb98-3bb8-48dc-87c7-e23f20fb9614-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4e7225071b96b06124bad136a423189757e4b4ab5d20cfbbcd9ccb349e22033
Date: Sun, 29 May 2022 22:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653862799
