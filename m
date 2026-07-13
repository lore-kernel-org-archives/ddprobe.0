Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D03723393C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783912114; cv=none; b=oPgWIyXvRQj2v9ep4Q9aL0RfUuJ6xSjQcv+EPjq5WAWVL0pQeJEADa4MBYT1WdCUV5Grpro4v8OlqF8j6H4jkrgkLRdqRHDq9CAgnU1Zb/xDIJHizpVms0jMHA+FNUc2UzPL/7736L3IO2oMwQhLBsTs4UP7sl1dLFx/0f5kRQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783912114; c=relaxed/simple;
	bh=zDl/fSO3vXigsm4Qvuoi5M0jpRgJlWuY9bdCVsj7c+Q=;
	h=To:Subject:From:Message-Id:Date; b=OZqYmywf8fcE04A+7qTJKI4zbUJqw9TUYPWntidOjKwtoAtrQIsMhV0mPLhJUsd3/5xqkvVRNC3W1XWn1Co9Q/gShcPc5zeqFFmN/VuxcACif28ICytwulZas93pvWRI0fGVeYHoLKgl5hVbQBy7wp6P1IMxQhCx6JIBq4XBG4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js3+fOjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js3+fOjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD85C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783912113;
	bh=zDl/fSO3vXigsm4Qvuoi5M0jpRgJlWuY9bdCVsj7c+Q=;
	h=To:Subject:From:Date:From;
	b=js3+fOjTAzH1XVs6L//XqU3JKwIwPM5LGYY9Q/YDxAqdu0e/QCKaCSZIlzL7LkA/y
	 5qT3aTZIniIPH2a/2BWe7QLgH+DX61Tw6SzZi+jli+cFvbMbITt2AtItG1JE1IUcqR
	 2MFfmhzgQia2Dldkz1H+wlVS0aLg4iad3ikPyx5r0fh+yftMELn+FontEAWBktci30
	 iwVf0SBxrVCNA/ktMNdE169kTp/Z5URDkLcBfS4U/mma7j30gCbW5KFZ5XNvRb9VcT
	 sjB34ktdAf93+MmQVCdRQhsaM/dRwjuLGQigTyf58QxCLfq3bHrZqeHi2tMYNNUEfm
	 PFQIvM62TRqjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89B4C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391211368.9774.10259607937795495200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e8a5e1bd9383c01ad9c7cfecd6cfeec62e55d82b5de6dfcb03b39daddf1b70
Date: Mon, 13 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783912113
