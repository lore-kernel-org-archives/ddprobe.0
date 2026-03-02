Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2058B3C2E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772422494; cv=none; b=T4VY8CeJ+b/74zc0AYSwBfZsEo2ejk90uZlLuXxclWMyioHLRxl1Dsq0qnAO57TbPgkjWwMlsVt979QEJTjKMMQ3SzZX6hcNkLTJGvoYG3IQf1fPRL3AcTjsmQDx/NwGqYyzywxN6ogaDU2kWMdJxw2uL82LoEMYJ5/8cW15Mtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772422494; c=relaxed/simple;
	bh=1v3cyX0V8MCOd/V/R3kIDhOjnSFp2SiqvW1OvA/qzS0=;
	h=To:Subject:From:Message-Id:Date; b=uu2GBFFOE/2fmE8MXAMKhBBkpF8c7aQQSfkj9oi6WJGs9JGGSLr1Rk2sd7ZHh9HHW+7dN4HTWtpLHEAgwRuInIE4ogqb1iP6DWKPxVWNMkgdyypAkW+rMenl9D9qHitQ9z06PvjIsvo6kLe/Jaz5Jji3fMWQ1MxauEZmeL8K29g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/gHl541; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/gHl541"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAE9C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772422493;
	bh=1v3cyX0V8MCOd/V/R3kIDhOjnSFp2SiqvW1OvA/qzS0=;
	h=To:Subject:From:Date:From;
	b=g/gHl541vjYoqwQ87BEF7I/+czFTPDGRioMbVimU2MxUZLpKTYb89MJG6k4XTf9jZ
	 gy3jo0wQU2kM6Mj/j5Gy46UZ6qEEr3Sce6QBlXfCbxT6W/YmfVt5+UmHoIgG2raeA7
	 VmTNNI9qqjQQySXKjRuKkPXyC+2naWKWGdheObAjeC0omcGNSVbC2hgSJcejz3ohMr
	 ZoZMcRTkmzrHVNJ//HskOKto37vA5QOGhXgJWtaMVYOwspUgTfxgl289LiexR8KX1m
	 gepo9+blXmQKRDgilgxakrIQmtPMPMAtZl+55Sy9HCuh+baXXjgFDmiJRLfNwMtsTx
	 +qOAiVMo5Neyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2F4D58E49
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242249362.26542.7929116266672169918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1bba4414ad2b326adf1acb694e91b159434acfb0eb241bcea9faa632e986c2
Date: Mon, 02 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772422493
