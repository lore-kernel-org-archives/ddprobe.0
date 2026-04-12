Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB67363C66
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776017254; cv=none; b=RN3a+0399WShCnBAPxPgLSNdG9YuXqBhT63lTgmUvogZNz6qWJmlQxw+jvXK23ythRQlhJ9weEiv5QnR0O5Or3c8ETqm5ITU3AeZtsuTqJXhtF4iR3fwHKuOFIoIPjd8hJcVbVUq+TiOq//tGb519iO3t/2xzxU7UWnD5g9Tjfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776017254; c=relaxed/simple;
	bh=1FWBkPQFRDCKnzAdb813HeSbDJ8tE7T/kRGCc/NrYuE=;
	h=To:Subject:From:Message-Id:Date; b=J+LZo+wUKfGlT2AaXWwZ+IUtCDvWNs8djhFoxiLvFlIj6iUILvD1p0w9oha2aMNDyjXBh/xZhL28+5L6JHcDVan4ZF2RM4LZMH8M1Dz7bv4J2kzY4xtQkX7Cx2xLAoS9mVUQtmr4gHphWUgc+5MGS4OKpntjIGFaZjkCy/ak4zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN4KocRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN4KocRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCCBC4AF09
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776017253;
	bh=1FWBkPQFRDCKnzAdb813HeSbDJ8tE7T/kRGCc/NrYuE=;
	h=To:Subject:From:Date:From;
	b=oN4KocRfJYjudOStMj6CyH+bKKHLhIfqxZEe393FFP3nUnaKEbGUvsJCOGTrnx8yf
	 YLIygrG/pKelBFJ8PmtNTG6OhDSY7kz0nP9C8LjOG+hQ8vazR6EbFxDNRqnqOqk73s
	 /2PAZStFNcHYlkiOD7lyEVJ7YEmAxiHJzz9EgQxipantuo2VRmmaL5YldWfNEfeh6w
	 s1XRcfgc8pv4P4fLb1idcBfQZyepoy+0hb25jqTrUd0VJ56apdpKZ9uAfWzaTDFcD0
	 gnfisZk4C8zvSqsyEnBU7lNDgaLh54hd2VMpM0bFTW5oPwxS2+H2eH+aW+0GfE2zUc
	 pSgBdznGnkmCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD182E937EE
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601725368.4594.17443502578500653225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827e81332b50198ed7812080a02d2cf8b70493ed3ea63fd5609622d31371f28a
Date: Sun, 12 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776017253
