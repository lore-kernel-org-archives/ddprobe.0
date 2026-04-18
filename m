Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169811A9B58
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776503254; cv=none; b=ZA08PWd3V01N6m99U+RLlAJUrFBUy3RW+FX7sQqYnrQWGMuWHy5MIOVM3nB+lHqlqejYin1RHPamQwJ5DeoBdiu5VdQ+aoYIxPtApr09q6qDMn3EQDM1cwkHb8VoOCWYtX9bHo1udd9vzQXHyC7ZYVPsF0lFJTzmiVkqQHQcVw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776503254; c=relaxed/simple;
	bh=r4d9j0aRvrs1ObOKIJoaAcsP6FbVczmfqn+9ywUfLQo=;
	h=To:Subject:From:Message-Id:Date; b=K3f/j0NZCgCucyCABd1a+x+lQDOj2sbhprfoFvYi+qL8zvy7GHwLElHWbO90nJPO11ToO0CI3K0ZOV4YLm7GfsyfJKxSSG0Jv6WdWp/xLzSoYwOAqMgGapp2qIUYGiN7cjwSHQNYKTAQTUeIFQBxCS2pVldFHZ+X42xYakjEDSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPF7MpMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPF7MpMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE729C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776503253;
	bh=r4d9j0aRvrs1ObOKIJoaAcsP6FbVczmfqn+9ywUfLQo=;
	h=To:Subject:From:Date:From;
	b=iPF7MpMpjqTf4ltvv+SbqAdqn2HWYZ9VqonYH2prIP4iGauDhyeUyXNYisImrzjmA
	 2SgGlGuxRRnKGVN+X1Nmbz0wVrMreFxiMAgs1tug2jX2KfMOTWeBH1KeWFnO9iLGUS
	 tjzLvBM6YSA7L9N3L1IEagZiqVEu55Cnj2fZpP434nZ6Lq6I0zfm7AckmanFUPfQgX
	 SNyeSMJOKpZ49JQOV0WXoyMf6+SdvC97qOc+wi+9LaQxhELspq/xANbYY7L0GFXIa2
	 YdVhOSdEJMk0WKT1bFt6VqfvXvQsfPSNZ4VznvPTF2c0KIz6YTFHzJKojyzDrWS/G4
	 ypjVHh2fxo/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1157F99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650325368.17194.15665355316959634555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8663b53df510886d242be974c3242070d3bf5ee3ae609a9c46811cd7e43932
Date: Sat, 18 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776503253
