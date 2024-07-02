Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D912F43
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719884123; cv=none; b=US56ZMjWXwvg3cdGYjAGzxtEyf0rx0DSuGNzYJYPQutitPdY9UrLPHn/WXG0BKUD/iV84rmAfhDaRJuVx78rCu0GDW/YtVBOcurU3CqhSwEhc3+gAWyKqxO5LtzI4Jl0+dElycDXSJBJN4XVMbqVR5ZfSKJzLlMBLzRw18Iy0UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719884123; c=relaxed/simple;
	bh=OAZ4pf4GDL04uf0we5Eh6euChWmUANJyQUC/2WZxDhE=;
	h=To:Subject:From:Message-Id:Date; b=Ls6u5zgmsn+GuYwlKb2E5QfNKterWusnphrHb5tY0+evY9ZAwT/+izfNxo2NCxh+zv/YP3F1Ln40sSwYl3KTCEXrOOfwO8icxgOejHeSX0RDCZP8unXADC0INJEw6+udZR0j7tXMFTCRtRMR61i+M+fxFQLzJEanaEZdfHLsT+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MP/6npLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MP/6npLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF63EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719884122;
	bh=OAZ4pf4GDL04uf0we5Eh6euChWmUANJyQUC/2WZxDhE=;
	h=To:Subject:From:Date:From;
	b=MP/6npLmSGZUqzb5fzU/BDQisrSY3sP2lLEcvkPgqPqAArTtexYB5W1Viy4WK84Ot
	 rrtzNlP4xrR4p3xiFZR0PFDgQv9k05xq4CermF/9N7LlM6LBqY/vBsAwhVEJPfxlah
	 CvY8RkJseMVn9mEGJ9NFhGWVCnSqfviGmIAJpOGF6UTLlf3W5T6AFEHCNgOr4uMaSU
	 yWBYx8TTO403i7Bz4AcSuwLAAZItdpis1Hqu3rI6M0CtBeGlIQUygRaiWnUsO+sv+X
	 p9DlFEbnRim6zS36Ok+o5Hp1gjfytJH2rEyPUmdv0hL0iDVfzNw0wu1YsZYQyV34OF
	 YuN0lfnXyaF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C395FC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988412277.28356.5223268557879982451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace11d2256899cb9cab178a132e836422b6a8561591d8690f779206ec1dfb6bf
Date: Tue, 02 Jul 2024 01:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719884122
