Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736E33C3BE5
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781682994; cv=none; b=PqSyuutEhKKy0LYkOTnT6vlnRSKmidah8VA7UAPDC3qydMeo4fCvmAZzjzrr7ifjhnhXdWHFP81chgyWHHl3xT49MqV0VU3qepcx1ZBLJy+N4aKBXK9MesXHgrVlSBkiCFW71OLbH0gys70fxVMNmKI6lp/hi7UFXSZkCGllDl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781682994; c=relaxed/simple;
	bh=Sa9rg2H/wMCTAqycJCvFFHxEdw9xUGdvgeWRIQtacas=;
	h=To:Subject:From:Message-Id:Date; b=DnH8P8jGNX1znIy0+a6WHVbglzPtjVT0SwPecWvBnNgRDDJhgsEGDjl+Q3+A5MevJzu2+FMJ0olRhQmsfBkDtNIBNBU8xuAt65TZmW5TKuCwrPsqqUQXVzPpVS692HvqTYv0pCDhxvXxeD+I9VIObu2+s5012WONYVx8rg295NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLNJnVOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLNJnVOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4911C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781682993;
	bh=Sa9rg2H/wMCTAqycJCvFFHxEdw9xUGdvgeWRIQtacas=;
	h=To:Subject:From:Date:From;
	b=fLNJnVOhLq2ooUQR6W1qtP2MmT14k+pIc5CeUvabS1AJxUTMH9uX3fT2lZKpz/LDP
	 JN7xJ103LSOiaUSG1igKYv2/KdB50Qj0dTSe/FDugFHBUPluAVjaApqHtdNFLVd7Gp
	 nV5fGCuwOuBdIxUdGjD0j9rKTrc7wH5EbQGrWLQ2pcDqhEFk0aQ9On3Gchq0vQtB/Q
	 94BbmuMWTbc0pqfGrJjoKKSakII+5OJBASIPrpxS++7p/lh34DoBoQ9G9oFAHWMMVd
	 F0aW9v4TuYyzN70pWHvQxLk4/e3+eZLyD/bY0CBVsTUcI01mMTCKCWXQwpXTrE/9Zq
	 HWMfpx/BF7UGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF59CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168299369.8217.8677523537463100338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3adbeb5eabd1834f14eddb199e514e091c1a7ef056fdfdf4e8d662b1f09aa4af
Date: Wed, 17 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781682993
