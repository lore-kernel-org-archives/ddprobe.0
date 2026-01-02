Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E062D0C78
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767342234; cv=none; b=ONBocqCrd3Jx8/RnRjcSvVcmmnvejYR3WdGpfr4TxORrIt9ZqhrR2OYzkIKcWUe+N8A2VXjn/M8RNRpHrPkaoJaoqAdJomuS8lAZrR2nJ1cZii7bpdgaSXNu9k0aB6+IPA57Ai6EANucApRdF/VLP1sBI9cxblW7MOs0NAJosyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767342234; c=relaxed/simple;
	bh=N4CBEHmGPOP3Cz9F9UhYzVs3Bfs3pYRIoe5cdtpLVhE=;
	h=To:Subject:From:Message-Id:Date; b=AI9T8fgDb2uAes1FCsrz56wZOaiEyjVZHWV0xed3iUjcVz7SC7ooYsBYSAc/zU8wzW2hvd3ThOBwQXFeJlYren1d5cjmWzTK9j2Mff2a20KSWtHLxXlnn2zhHIHtP3MLr3LOEe4Y5pTWtj9Vz81ZxIAMGk+aH6N6bMDs6O6A0v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9OFKEC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9OFKEC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5335C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767342233;
	bh=N4CBEHmGPOP3Cz9F9UhYzVs3Bfs3pYRIoe5cdtpLVhE=;
	h=To:Subject:From:Date:From;
	b=I9OFKEC81KhflUMrHRB8hnklr8loDFwxwKIIHwZ9oByWmp4U64ya3cOB5kVSeFutv
	 PJJ3zTxZ47+xMaD+vjXFKb3/PLUhNtjnz5nq5axtMlkI/PoFlrLP0FFHT/UmHoEm6E
	 VNyb4rjcyOqYFnp1JER5ndrKTsCLeNdx2ipJu7cuAU4nFJodi7isz4JVh9UNba7OzF
	 OGlyjtN0xIt0TDVdp2/Pn1lfBZzMSEDq8UB9bYKL9BhCK3CntumQ7qjo2sSYT/HRuq
	 oc7nM5JRBzMadbyD1NAsm6PkIyW+eakk1KP3U5phN9MwnEB9upfkYkgxSF1VbJINS4
	 UXGXmoOYmVhlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC1EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734223357.25243.14800854136763893355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5266bb1b44544956b9edaa9535b01019617656580b3d700f032aaaa4486a90c
Date: Fri, 02 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767342233
