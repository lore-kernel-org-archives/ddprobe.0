Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EBB256C6D
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766516634; cv=none; b=PW9hXqGORZjPROmRjFBbsbAcQaul6rjbPj2pEhKufE8heNp4FqXRaDB2cx9wsPeBweQf4YjtjLKypb7O7iThcr7AqtNIOVfvWOCbluIgvrsXzKqLjNhdGAlhAI7NbdN8WAV3upjdhhZes0SXkd5CBIfWHAvnxHUSGuK0Qoq53fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766516634; c=relaxed/simple;
	bh=GLYa3KXrChggi+QsLyPy7gL+mDK+qdB6JsBLtncuBmw=;
	h=To:Subject:From:Message-Id:Date; b=fPn5csc8wfGjR7Ha2WWzC9f+E4FBBvOiBDR8nyAFuab+2lLksM7RaNMGU1Yo04b9TYb3byICdN1x0pOIxAEh9kLNvm9O4fhCmQMam6afZO5ZZZk9RocFZHJmAiWHgKmNOeKlLx4PmFXiqxVfCOl3rPnvcV6uEPC+CwOJrbK2m8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvoAkA8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvoAkA8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D47C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766516633;
	bh=GLYa3KXrChggi+QsLyPy7gL+mDK+qdB6JsBLtncuBmw=;
	h=To:Subject:From:Date:From;
	b=GvoAkA8HzmemGsD2KC7kqupzRhZ6DxmB727y6xNnYm0GsuhlT2BxC4GrHpgT5L5f1
	 BCiKu2GVX0ErvfluV7aPhw9WbOIhm/DtI5A5dodrGsE74iSuP5KC/c369/BKZ+oTKi
	 WW1w9uIjenoSf+vuQ2NGbMHC4zHkP0v+j+LWiT8lnHbnaqil+Wh7dMMtwWBQJB9d+v
	 C1rBQ2pP2vC6pTtxVupPn84hZpEJXjm7/en4pp6hpnx6mPKPKB5X+WgHXLn/g29s6X
	 k4uZH8KgUJILX8l6FXxJpiPanZ4+cjFrPnQ+eIeIFSOkX95z9stxNXh+pzSugu19HX
	 +mWk9ppaYDZdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95632E6FE23
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651663357.23207.1923954108821688600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ce74fd168e9176f1086258102fcca0714bffd50fc2f8af2e658a869aeeb408
Date: Tue, 23 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766516633
