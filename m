Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515B3A1B5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772252694; cv=none; b=JTHkji4Asazgbo+JnUY8JK4fv4KaU3z7oBwpSpFzz2fK9o4fitLJKd5uLGRPXdUGUqvsIKxw+7rtCSbhERkzi3pmJ+K1hlBDGb+ZrZ0+dIPIaQtkD1lctCKFy5bp01nF50q9eYHkC09yjYyjgw9hUvahzkDXtymdDQvXiE6TN6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772252694; c=relaxed/simple;
	bh=WPcH6oOkJz5fvDcDo0Yd2PVI3H5yI+UsaSiShndoVN4=;
	h=To:Subject:From:Message-Id:Date; b=Jt4+gXcwrjvs0bKUw1DaVUuUhat8F0WmR74nK0Fn4Dnlt+yqDsBUx1tHHuAFMoR3ElKTNKwm0B+kEeWvKLhlvwB+sNNNbMGxrSZD8iCnR52f/0Pnsoye7ZbGo7RrdA+R8+4zBihj2rRg8IP0eSEpiPL/P2/S5hAoz7Uik5tM6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0uKh2SG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0uKh2SG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B521BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772252693;
	bh=WPcH6oOkJz5fvDcDo0Yd2PVI3H5yI+UsaSiShndoVN4=;
	h=To:Subject:From:Date:From;
	b=f0uKh2SGLrRDuKor0ZLuHhSvjj01xCfCErhbwpj4kYeI7S/bWWStjX3/fCiwy4F0e
	 /ifP+YR1urNCSB0s5TmaJ4o1B3yqKJcovJw879y4iI2x7g88jClzuWb+vjCxPMJMIb
	 TpbEUq8GXiojXvqgNkoUyHgPAobvdY961LvBXQudL66HdgsCOiGkacxHl5xP0YNX1k
	 RlKOJJ2E+Cml9P4b/2JYjsLpiTJGdy+VFmRZyk5p41xSd2PioDgUmSDLxRyACu+xM6
	 7E3DRQEe4gR6aowxdsqXCreUhQ+OcMiscTJpbxfVwweS+zSukHhb0Mxy93c78zmAJz
	 3njCFCufs9h0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F32CFEE4C3
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225269362.23082.6704112856317560634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f0488f72ba3212c4b733b3025c54ff3441ad067a576f02ea56f46840a14040
Date: Sat, 28 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772252693
