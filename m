Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADEB13BAC8
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715309543; cv=none; b=uI7LgW6KO8xPapUiAjwetIji/9wmsEthOBNodoCL/fCdu501pf9t3XYMfrC4JXUuRnU3hYRL6Irn9sgIS6YipE8SDmIYRjPRYF5Wgpbq3UN5Vg209v31Ketd/+Qsj5/NZrtx01syAay8x8njt6lOpYPn5lnFWEwDTcqzjh/CMFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715309543; c=relaxed/simple;
	bh=5umKW/PFigrDyELQhQ7Mm/zBy4ZjdSWLn9N7EzwGrGc=;
	h=To:Subject:From:Message-Id:Date; b=s/z7LmD2Qqu1yR/RuoymnY6SrRXSG1p9SVuksTQP9dYToGWRLyd2zKP4QjDa8y7DZHAB7QoX9DjJyVOn5nbJ2snV/6rO9WW+UQOBTNg44R2jS6EcC5kqd24cHoLGTY3eFFlUIE3dZHO9ckz8kH/8+svodA0T6jUM1SYAYUnR/c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xlr6Nn4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xlr6Nn4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82AEC116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715309542;
	bh=5umKW/PFigrDyELQhQ7Mm/zBy4ZjdSWLn9N7EzwGrGc=;
	h=To:Subject:From:Date:From;
	b=Xlr6Nn4X96JvushmZI5CFK1B8SzUas8HxPyDlW0ZcyaMo0srjchAW8NumV7GfqUKX
	 UogMtewdMMPYHqjOOxdLwLIJq6f11ilE2ox9SKnX0D/gj0aTI8mpnlDANX6KrsBlnA
	 g6Azr7IUeW0buht7hf0C5gY0uSUgnZpuL7rrQp/QCIySEPq0EenJijjEAMShTxowAF
	 CFUWyPLkNgiAhgMuupyccJPRrTl4tjUkbCROc/SOCJ6SmyBqLXIMwttuYde3mlC3Uy
	 DXUbPZqXKGUqVjXB2EgrhGG21/HuEMjtFAUJ3wnUTHHQ3XT/y2F2qFs2hSqbXTCBq1
	 +hqfYopfNRGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3814C10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530954279.7598.10664497976427337233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf20bdd9ad703782239fe392246525a807dacd42ca44156cdc961ed3f0486bc7
Date: Fri, 10 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715309542
