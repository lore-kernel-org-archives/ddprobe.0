Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8D3EEA8
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748657994; cv=none; b=Rs2i/f6CvOjVUqX9WbyBtp+3vg+Q2c3DcPlKXAYLoj8ghK97tNngXc01Wr1HxdsXTBG3mHSx6QHaIxdGgM2SBZzpnaPFznEfNasR7g0L6LpSo48xvTjtXO9XYSsBT4lX0yobN9V35l7pjDvuSUwTXFvL+J+Y7dZtMeLTMhE3sgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748657994; c=relaxed/simple;
	bh=V1k7jqDRfoBSLZ6+Hsi9v3mmVcEj/StxDCRGVAVimjI=;
	h=To:Subject:From:Message-Id:Date; b=dD7Wx8ZOAJ3bnHwV4kBK39kMEB40RHGeGkEKsgAjAoDMZG4pDPHy4/+lABlaCqlj6irckS9IPldSYRpXANcqa5KTKb7ooKMT+rByE5Pv3gjvapisVu9vz8PPlhHgA9MwfXk23FDxCFCM3kWTxx1BSVEtDI30sXOIE8HQ3mGluYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d98BOiZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d98BOiZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B3EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748657993;
	bh=V1k7jqDRfoBSLZ6+Hsi9v3mmVcEj/StxDCRGVAVimjI=;
	h=To:Subject:From:Date:From;
	b=d98BOiZMQkWGvc7rcGqSymXv5bSHV/pCIr6PRvHabZ5nT1vQM7YEXfV6PuPrKlq2B
	 qcLJScFfh9uPWqy1K06P63b/xLdn+W2M/uKynjf4qLIxDTlu26J76m5366i8dff/ZA
	 R74tyFy/1t+hRXW8qwb1FsIDUo4ZhKwDkyVTA9itHB5CiHUXHwiTEhATRo8d8bEsNE
	 Zy2LKpMtzcACYKg8qotEYfGN+3osuM0UTMMaZSJ1Es7ZQe2MZcN/K7z8ieHsHLEbsy
	 UsnQMgQrxG4wytZrJq1vAF/oL6WiQCcaS5NwGaDKfc/x9kZoGZ8JO8sQfjeJ7q4KGw
	 ez3yF7IdvoUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB22C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865799358.30262.6308132000181955516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b53d45f186bb463ad28954fb335129eb75d9af325500e3d4febe8522f70610f
Date: Sat, 31 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748657993
