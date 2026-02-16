Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFB212CD8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771212894; cv=none; b=Smg0pR/48d04FsLZVB3ZRZuR4u8NFWoKl2GJ7KThJoeKrIn7dD5AI7IKjGD8NYD7rmf2t9NO+Qw/CwFNINbH1OsIk+pJDgixkcDp7iJpcp8KtNCO3YrbLNZ85c8Z3QtgtZUtppMuX8fa3/Zcdbm7xtjLILD/2eo509W6oPgqPFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771212894; c=relaxed/simple;
	bh=ASeZydPSvwe6hNSBqagNhvA6RNVzNZNX9K/uMwCGelk=;
	h=To:Subject:From:Message-Id:Date; b=BDBoG8TAW0mUXIUwjBUwEKpQ929ZFZ9mefRKFCQpQRBA+79r6t6fKxdJoaMSq8hgM4q94a0nm4y1jp9ktQigxXDUTAuUitw806oA9skNTus4dz3aeTBcU+QPGlERpBi1Odj6pvaQkZ9TkR2GBW3kUwi0vvKn1wYSeAoD1Sh/3xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yj2aNtS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yj2aNtS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8799C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771212893;
	bh=ASeZydPSvwe6hNSBqagNhvA6RNVzNZNX9K/uMwCGelk=;
	h=To:Subject:From:Date:From;
	b=Yj2aNtS98z9PDoXSrtrpU8O2kpmcJESGrEg6XaDJWOVMRJ6/JPOK+Y+ZeH0DYETRX
	 V8KqCWkol9DWsIueeVGPxlC2wGs7/1J/f3hG3WRVk/toDuby3JwPUIksH71uAZR5JD
	 06pqN6IdZ3rflLiP3PeaZZLOG9ngOfxARXkixN78bYMZ1+JxeoEK6t/dIPx1PAgy9T
	 T4l7YCJPXPbJ8LkztrGYn+hgmNZwQMWD7Ztp3vI16BK+9TlIZrHxHrZPyg387aVW51
	 ic/kkLqFjJowgSnNn/hMRFblQH2YHntvGePf4ZKdzy+sCtoTbYlCX/1RwNImmO9AV+
	 1hSXhFzVEUHcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0346E63F29
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121289362.1992.687896333421281971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5557492d4c862f9836fd130b73d8902cc286f53dd217ad3b1e70277f7129135d
Date: Mon, 16 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771212893
