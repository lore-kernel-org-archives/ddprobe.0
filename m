Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E69DDA5
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716788663; cv=none; b=ZlfAsPJqx2G1NzAk0vviW0KhqhI62j2LGsrBqTnS2qLDrcuMy8ueszWi2y/rJD5MeAETkrFBliBIOlEJNT40DCcdBy+ow2JJOW04MuoOr8nUucYJSMpae7V4Sapq+KE1S1I+bnc8zsoSHDflBO2ayK5YeV9T8qcpmslno7spWp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716788663; c=relaxed/simple;
	bh=JBBNxwgCGec3pqM4NNsFXYjjiUD3eg21FUFPt/P5pBY=;
	h=To:Subject:From:Message-Id:Date; b=cxqkvgRdpq5J/TnJWZa+G4DU+dn/9bXdBGmkT+NPdGeN5OLLzICl0qh1lI4Tlovo3x+7d7gcCWGBxrRxKN8UuxrKzoRyec5GbH5yuK5w9VXkoqDUBKIt3zL4eI2iqK9F+YjUqmt6lkgT1yKfdJ4/D/4Q2zAdWLrKrWCbWz7UHLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5EUVi2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5EUVi2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC34C32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716788662;
	bh=JBBNxwgCGec3pqM4NNsFXYjjiUD3eg21FUFPt/P5pBY=;
	h=To:Subject:From:Date:From;
	b=A5EUVi2J6GvEjjVU3yMVD3awT3diCGDqBBT1FglwTkSrV/amb0owBG6f0/olBAs6F
	 VIABi0jdnKiMuXr5vA+hHUXCM4bT1K+gMpp5yu3RAc/0LBa18nUf4AYo58xp+dbirR
	 5aMIOpXCRCh+nilTYPGul1Mshyov5wGNAkIYy1rkgyTYjxhpT1nl26bIwWQSQ9bXIH
	 cJoawQ4ZUT4rhTqBcQ+0y8ruHkkdMmMlABUkZOuGQk9Nl0vKAhA6yTg3JQl9zo7MEj
	 TFYtm4+rzWwOEiZ1gH6/B0eZFafZ1HomC8+g4XpZY2fj7o8zTwarayPW2J1yDTZi7E
	 siaPUxH9ZFN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DB6C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678866278.6226.8813324898554310873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadabd2f933389ebb5b961f830bf4fa81bfed49cefdfc64fdd031d247e4a2e14
Date: Mon, 27 May 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716788662
