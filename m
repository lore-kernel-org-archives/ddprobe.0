Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119DE2848A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767545034; cv=none; b=i1F6x78NlNi7ZinEaigkMj4lSdg5WkmX4MpBcjhZtTPU0exwikY4E6E30TcRb7voPMgh+s0IJIoCB3lA5Q2GZh+oV15VnfLPYgTjDwU4+Eqsb8XHopvHgc4zkxJlMLh9RNTMbcxZt/OjuID/y/dD2xe96Fmwn7b1QCSaPbM7IZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767545034; c=relaxed/simple;
	bh=e3GwO2ZUSjheBYsiT8VaNhjlD/IXzuylODiu+d4rR0E=;
	h=To:Subject:From:Message-Id:Date; b=hsO27CZbGqml0R2pFAwtEZatzK2g0KxKqdUqPALCdje9CEUQ+dVRdjBxPzl7CHQKaQLn02LCrLnEt72AhogjJDT/gS8WkkcPVPmxGvGHugfRESl51P8WtbVgX/BHxZGG+uhFb96H9z8HUfbCmTvQIEFqju3O+wBZTBAKnz5U/Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/+cOR0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/+cOR0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07F7C19421
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767545033;
	bh=e3GwO2ZUSjheBYsiT8VaNhjlD/IXzuylODiu+d4rR0E=;
	h=To:Subject:From:Date:From;
	b=B/+cOR0elt7fhJBXWpbdhQHAfEZ/NVsjg/MO+/bGwTqzFkThTdD5w43+8IwWstCZN
	 /M0vS1qLUwZCx1GQyxuhSTbYlBiU3n7Hgi8ye8NtuGSSWLHMJjCTWDn/m0d2FdbHMN
	 BZL3KBdfqCclLDxZjbSXecOB2Ignl5J4iVmoYSf90U3f3XHjpn9kAIN02uYU5jcQnZ
	 2ti+jKtAYCXZjiKF3dDSDRojFZ9BXZACAOPXLE3tNb26TxSTpTa8bLImyLd2DUNDSj
	 F8mGKvTu/ZKh3AiZafLdgKMkxKMldODm9t4khsQJZKkXa1FksSZJm+aiZ5T50zZDNQ
	 bJXAb4byR54/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169EC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754503357.17050.9868378577107286827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7229dd2b90447bf746724c8f734aeb47bc052b84dc0cb111c714fcfd71efd5
Date: Sun, 04 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767545033
