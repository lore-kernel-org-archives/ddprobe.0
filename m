Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14DD327204
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766444635; cv=none; b=kKhgdx6+v3VPR5I9sVpFbRTLjzZEsSZSLZS6TjaEXG3Emxc8gN7IVOORM0FmVm/WCVneWQQvTwMCwyDXKA77U8CTgHAxC8ifVlOq6UQgMy7PySRmIFFy12C423zoVSCoRVtKMWqzbEFFL8dBDBRRWVrpz0ROkW5iE/Eh6W9oQKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766444635; c=relaxed/simple;
	bh=zWbnALDtLfbMIxrP6E9CmVeHnNFbSjTUD1UuDrdHrr0=;
	h=To:Subject:From:Message-Id:Date; b=Hn34+PGNUxfGtEs3gOmTfH+VxF1ULhqSxyHZ4SNEUMa0YvFXh7enki+VODJDoODk/F1wRxrlqQrjd9rHnv//0utjWUCq6Qa0tIIxZUVfbdCRo3Q1dTXEoDcXYqIdf4F8XtxI26i88VJDYxoqZwcQ6Q7qnOVtsFB60iKihCJaVeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qzd1xgS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qzd1xgS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766444633;
	bh=zWbnALDtLfbMIxrP6E9CmVeHnNFbSjTUD1UuDrdHrr0=;
	h=To:Subject:From:Date:From;
	b=Qzd1xgS4J70HxVz9bIQVOrrfS3b64iSx/cgc9iHhCkFX982knyiY+Ur/ej71q69Km
	 GQfbHWLpE39UkV+PGH3s+cnu1FQOdEz/2PMA4vimIUpiaTZJmJUt/vIf04M3Tr/uPK
	 RN3iPs+v6ryTPAKxRJa1mOkW2YM/gz43QJMBStW/z86ypzlWBeLzujFd2NV8ddmbrl
	 hFHa80Nt0Z1bdaEHGTCALGOyJgkcIj/p4oBbJ77j/bSfhb+JNzP59ljJ0XrM/HNxcK
	 XkjNgYxx5GJhj4S65MPlRWcs0h1rCK18+2ZgW+BkSDTfCr1/RTWwavyUYZvEGhxhiM
	 TXxIKRPsYAIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D9E6B25B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644463358.24394.3432677405519378431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17d3529501885471954e471852efbdbf0a840bf735ba7a6aa633d4bd2feb03c
Date: Mon, 22 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766444633
