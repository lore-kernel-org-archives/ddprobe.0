Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264C87404E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761497994; cv=none; b=EeEAinmqzp0qFeIzU5fNl2SswgPU+PEbYZF/WRkwShMGffuLLi7SiQ4wiwipeY/+lt3C8S1FgQ29iwv/FkJ2dqnzq2OjPkYwEuqvrvYemqRpq3o/+Q4CnNnkPUJOqDTy78+W+yPY8FQmi3wx7yOpGkwSkM4gAC76UTrMzhcVpo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761497994; c=relaxed/simple;
	bh=SG75zIFK/QjkOo4ciiZwqEgJxnDpuR3Bl+jeYOqqhig=;
	h=To:Subject:From:Message-Id:Date; b=DC0nJxOyp7rVndQEBldTut+UfWdHWn+BXI65N2DP+ebNyIyloDtG8MeoDSsYQA5k3fjlYxacIW69djbLWRCgb5U9E1eyO3SDJ0ln2rk1mXVndIbRxAm5e7UdsufTrXaGxNBk8vf+b8uCAK8M73eV3mxSTEpLBevejDLETCWgA5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYbNzSiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYbNzSiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A748CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761497993;
	bh=SG75zIFK/QjkOo4ciiZwqEgJxnDpuR3Bl+jeYOqqhig=;
	h=To:Subject:From:Date:From;
	b=OYbNzSiLfohn4cBrsj+Hkp8tVEHdcArVi09SPi1Tl3F3JDGCl0vkLR6Q5mqQijAI5
	 dzM3IbSjwUMVtFaYXBuNDdWiRa/a9ZsLL48uFIZ6pS8XjNeiGyI+qoqLjupoa4nc6Q
	 LxsSK7uXtOl5vXN6sjIjg2Fp3Lvm0fiYHwm3dvYSKvXOCMOX1YQsHoS21eTFlaopDE
	 uB4gmnpX0cK9eeQnQUvyX83tUR/GfGR6ZmdKFbQ9NsJFq2h+u7bXp7foU5Iw9f6xmR
	 sc4jfHENVZGGvL3TlzbqrFVTLmiV2n9/1dNSkk7sYmz36XdtQ4Jge3yOTuEIHcOgeG
	 G8pRci82Z8eeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9528ACCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149799357.9786.9571284947460941014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a45810260615962e3581973e12a00378a006fbf9719f6c9ebe4cc5979be13d
Date: Sun, 26 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761497993
