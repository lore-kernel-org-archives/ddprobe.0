Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673B92F1FF4
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791490834; cv=none; b=LEIbal3q09blITLg/c04ViLO5Y/yaw+Q7oprAwmHi5g0fL3xBcFUZm7FC1o5pjwREbYpwwefjHVydHjRtuoXE3400Ra+Vn/9MkD5l9njtuh3WNv0Tiy5lLANsRo6eIkwK7Ad5GgsjUZFFsCcLh3NFuFOgmKwmidw1/Eg+x/pOhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791490834; c=relaxed/simple;
	bh=w+PXJXwGlQj/+UzNPc/yTstf6+uTVebLVpW+xL/HybM=;
	h=To:Subject:From:Message-Id:Date; b=KW/E2gW0gyQP/nL6oldEq9VypXSGpUqeeJOY6+p1PxN9QtDlYZQukyRW1pM7w6MR9Re1UJS2hWBQvwcf+HuzMZZLnk7bIuOYVsRfnkiugSmu1aRkGLNs9sUYq0ZdlWOKDHq5G64tSWfnraKX5i5OozUnQ+uI18jiapCJtRTA8xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAtTF9aB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAtTF9aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA134C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791490833;
	bh=w+PXJXwGlQj/+UzNPc/yTstf6+uTVebLVpW+xL/HybM=;
	h=To:Subject:From:Date:From;
	b=ZAtTF9aBYQH2h1dFSvmAegkNFfSmHv4NNawOMDUWRtOPtG5QPmdJ7Cc0Sp7PR+n/i
	 pWr6rzbS2xpAsVQzTpJVygbtCkfyGkDTW3wkOPD7GWW/Q7dWLsHNC2BMvIcfv84hcB
	 B1ayqIGOEvOop2XD9xUApfP/FXCRQNICEodIXjLV4v9nppNl7AsgrKWefZBbi72xbk
	 MzSdTWDmzFRqOqx1XEIi+tSayBNyNpHELz0AxirfqLnAKEbztSpxusoWBTXyJhC8Pk
	 y+jU9fwtGbhAjBxkZLAMuVEIOlV558cutQiNLT9sW2qpGILh4FPRnQHJy45SFMaODk
	 cffgqu2eGrZlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44FBCA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149083370.25037.8184357798032866909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95f7cbc285b68c23639163f4d962fea203b1b4186bf42b44c2af30535553102
Date: Thu, 08 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791490833
