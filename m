Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB804400
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748870994; cv=none; b=awqsz2hO8IiDcVtCuKvrerNS/V4lXGtKS5Gn9osWEzwRd24q/6SaKYyDaRESq/8eDrAiXLar8hsyG6hMCYmViirJw9NK1B9OQyK+I48N3PFkwJLZJzVtNDF2TRJ35T/OA/fBavwzdTGEOljmgApPh0zsaB6U9sIDKEg9MMGmB6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748870994; c=relaxed/simple;
	bh=G04yXX9Sxtzk4EXKkKayLBk11eremoKwdBUC+RIva+E=;
	h=To:Subject:From:Message-Id:Date; b=DPCdCoGa8dPTg2tmEU3l55lDoD4fxqb+MlJh5JPW1/jaD3KYNDMRnfWg1GfuPPDdM8xMSCAv5OqTOfl2dDE8PIbFYoKTmImngE0fhKmwY/4+Ic1jokCY0FVHE6DsKMYv84nLiXiDI1HK1oKKXqAaTImX2y5lhoiuIw2GCm4whc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVvUV0Pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVvUV0Pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0720C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748870993;
	bh=G04yXX9Sxtzk4EXKkKayLBk11eremoKwdBUC+RIva+E=;
	h=To:Subject:From:Date:From;
	b=pVvUV0PvcrrlFO+8xmZ5CKx8RJ3xdppgRMsE6cayBbVdxAaZc2Z6cZkLvW7HC5q50
	 8V4VtdgfZDjVZAqbs4zFfuOD7AfwUdP9RFrOYtJOdxvx0X6e4itvhWG3rWWaCeYacG
	 cDxHgk2sy93F7siHmu89k2N8ekFPVn7MWV8qTEciauwnLHe+c+b17JX6EpVX/nSEEy
	 Mkz7CsWIpmUcQctxBdurl8HuTtovTCcI4gRd1Vfba2j0FcVo0avXerXoM1uBZOcIj2
	 6d2hYaXnN2O3wFdhUnKFDmUTBA5yfh9KDEdSeTxwYVEUI4AnyEAunvC36mrJeXA+YS
	 16bK86gamdopw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A3C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887099358.26928.5271602788296502655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70406e834a82fd6104611f4d06f984e1484559f3016ad98d29f7db54bc021989
Date: Mon, 02 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748870993
