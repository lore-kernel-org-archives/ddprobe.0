Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136EE265CA6
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762871394; cv=none; b=ZFemY0/aYJZQAwSeAnm/gTLwuIw+IA2J68Ywo/ojImuvnZknBdOOuQRU4/StHWqdtFdUYSZksLUT87IQ9/6Y7vIWDyCS8GScb+xFv7a3pdvCbnKfvb+Py9N1W5Og+3WUbpX8yIBe/aA+UkRVv+DYmgsSpIeqamyiZSKkWCs4TfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762871394; c=relaxed/simple;
	bh=js+s/Ue/WCMq20jeB5tBSD16HjMp33kq4gKFq+oGH4A=;
	h=To:Subject:From:Message-Id:Date; b=rpvJDZKVFEwSU6Z6RZRIJVHmT3rr+cxhXNLbbmNWgJSO1GDhFJ/8Qjd0qwz3FaURMRTzD2qPsdqxrACcWW0VTvbnwk44fyrXHWqXVJJYe/vbgBXbdAE50dcDYx4posaMkPVEiNRD5OMwdzTDn9hYebh5JujmNNwarNJBDhSMg9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuQoLnC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuQoLnC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B192C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762871393;
	bh=js+s/Ue/WCMq20jeB5tBSD16HjMp33kq4gKFq+oGH4A=;
	h=To:Subject:From:Date:From;
	b=UuQoLnC/gsCXrkNZiAJnP3mYpUiKtWdAUKDiH6BEM5JeSoi4MgcLyKZA8YLolXd0L
	 kL/6pnAzU3gXQ5x3J3OIhTwRPEH36zAJ9M+h1YjaXswCmW/kiSaH7wnh7PKTJ2gmtk
	 05SWLjvnKz7xI3LZgoBBEtpWnTWvF95gvWzE7zdh0mT/JIVxsRu1HLR2yc3qPFbLBC
	 rQbW/0y5k9/WRJARoTf+TvPTc3indq163dFrj2ZEK2P20gkKtiTRaRHalpT2OY3jdH
	 AAzemxeD7J3NFZDChPzZ8mbbfFG97G3FduS4ERXcTtjz0tnCH4xL/5dOvHOwDvXStJ
	 cd+/O50Xdep1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62ECCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287139357.23261.15602650724071559970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff06f68a9aa197c9cbed340132e8e1aa971158400cd9deab7bc45620cdf46282
Date: Tue, 11 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762871393
