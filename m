Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C9478F5D
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 02:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739328654; cv=none; b=gABY6rJo/txvzzK8/+rSIXv8EmFVaOq1auadW2xYxFdyQbzMKpFeXOMQbbOyzrHs0da5hYqM/2Sg4fH4+4tNzx/lK0Rt4lYi2OggnSEz/jx812Omv1xbHx8tDjjYVHffjU1MWC8RPxI3+8zGAiQWq9NU2kxnx93nvBaDgR4AE20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739328654; c=relaxed/simple;
	bh=iutVpdkP5xLhHXE7F+++bQwYyIQKzMJfvdIZDV6cbYU=;
	h=To:Subject:From:Message-Id:Date; b=vAuRu25+aCeWI8D4h3Pf5RLSz29Y1r7zMxFTfcRxcDzqh/ky9FVjch3usWopDt4bDfm1mBPdhs+UmxcfsWbxUmNRxBqdiRyd9q2MWuQY2OGZPTejiLjA+H0cHc7MKfP9Csvye2cwI92/13Cx1R6xn2Ln6yuEcgGGlEu1GOHCx/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGjBQyjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGjBQyjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB41DC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739328653;
	bh=iutVpdkP5xLhHXE7F+++bQwYyIQKzMJfvdIZDV6cbYU=;
	h=To:Subject:From:Date:From;
	b=iGjBQyjVD4GU7HQDUmHWVESeKUhqJkgozfFDCxu1epZqcQ/lCFfWPmFccQzdO3GJO
	 mi70rNTilnMDHxvRI/plkOqno5rlrtgbov2SMZ/UWW2WianuQMT09xRRnft7Vq5CGx
	 T+GtuooRSaqBn3QeBtPK8PsnKSy07cTiQC+46Rtu9rRzOO95ka8wzQilfANAHMTtkB
	 pU82792VfVwbBlbghAaaJRVkbXYwNXmdFWCRbcXFkBl1sgckdC9LW8ELkvKblrYt5G
	 a3gs0qwELJmNot0bMZINSrW0oHXfUxlvvxNVzbwlSZITcFpf84je1Tz0A11wRzJDkm
	 QRIEddzVDTwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE1C021A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173932865360.5421.580514584267342760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5326e16d91c099d210a6a50d6e54c9cef5b8caf86465dae6ca5dd9c882af421f
Date: Wed, 12 Feb 2025 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739328653
