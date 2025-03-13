Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBFD1D88D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741847934; cv=none; b=NhOn2wIk986TsqNSeU52CzukJHSrP7pI0PUGnBZZDWiSgSYSqU6OA49AZz0WaMN/GY6R7n9goaJtKMjg57sJ7WgktoeKrK1EpNnIXBs04b0yAbwHPcdDiPmwer8shxHTQOuI2H5s5O9c3RKJdaJoddBENref+0SWeP73Ql0S8EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741847934; c=relaxed/simple;
	bh=lRCcMI7XDYKmgjFBprRgY5L3iA6yIc73zRb4Sp4FMA0=;
	h=To:Subject:From:Message-Id:Date; b=SR3P9ffbRrjhx9mwE7nw1ocF7zY3ut8EQIxEuvmnn1u4/zfN9xCP1N1sYJGLBejSnq+iwPdzcagbq+AoUVeuGXha42fjskl06J3nJnefsiszoYhgDwQzIHgFR1sRD3R9bEbO3kVcyVW7RrJ2jORJ95TOMacURyTamwjJKO5nDmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cw+ZXQO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cw+ZXQO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4898C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741847933;
	bh=lRCcMI7XDYKmgjFBprRgY5L3iA6yIc73zRb4Sp4FMA0=;
	h=To:Subject:From:Date:From;
	b=cw+ZXQO5arAOMNxLqB0WDvFWzlcsKrYg6Ukpi6XaSchPd/K2al3lOoxXOfUkiFk/f
	 Z9xrZIkB8boZ5lBVcPDkOvZanQfsl286CeJDg6uaHZdQUL+B62/36IJL+Rjvcp6F4C
	 4rz5G27e+idXkqIyd7flgbRd+knHGgvP2mPL4zbBr8TbB+a9pf83Aaby4/74l+Vvpk
	 kOu1jMqKNh71uIDcyGZYly8fGUGqulZrsM30anXaXCMWMAWwRCWHCYZKXt7vXEu6Mn
	 ORktpugW3/GCP+wP5HQp7KMlWNbM3ax7qDx+YqeRkRlP2TNj7c8PCoD37BZHai4smA
	 KsdDN60VVBnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A12C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 06:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174184793360.25636.3964055549224667184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cfc67ed80594dcb2a010dd6262465956fab4802a57b36ec303ab8a84e8aada
Date: Thu, 13 Mar 2025 06:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741847933
