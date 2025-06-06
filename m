Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21213A31
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749242394; cv=none; b=YXp0hROvPRNWLzdbHbAGnFN/aYeTGtdHoMniY/Wtt2kwJATJSAqSbazKli/M6aduGvtZmbTAw52ZyFmHtLTVoEZYBO+knmlZYdiBBMoc+G35gK9x7RRgRWVpJoThnMyXuNAZvbAyHMkSxmUD6OelK+IQrhj/0e5D0N/xiQtmrgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749242394; c=relaxed/simple;
	bh=VndpQOoPWcO3M+v2D2Ox0dnqdAlQYpxPaawFMHJytcc=;
	h=To:Subject:From:Message-Id:Date; b=nKzz+gjKEi4Eqn7BmVmTdrXYKwz2wO/sqzEQwRUV6FQFSG5F03+/vEDSt5TC6uxOuFLhO6doBEhR05lc8vhrcAWkV6q4nJbui/io5tkuMmFEMEhl2W+whFTIv7SlLWdInLCyZpV9sGWOpu5HhLHoRWIDJgMXbq6fb4yo2O8l7kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3sCcfx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3sCcfx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46EDC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749242393;
	bh=VndpQOoPWcO3M+v2D2Ox0dnqdAlQYpxPaawFMHJytcc=;
	h=To:Subject:From:Date:From;
	b=Z3sCcfx4lCT7BAlTc2sfpGDozuciCn9EUbL+LLk8IZeCqS0P2+Ak7t7FGNQ/46y1C
	 jovYjt/u1F3JUkMgy49y9u/7qz1B7mTSN5iLaOfPYJy1xyV9m8B1XhEfDshdeWQK8b
	 i4xiTfwpNEbqjIQvuDKeNcu2zAkedxYbZHOMN/TVzOUqWP+XElfsKHf7TTAf2SfBXc
	 9ANxX8qu7cCXJ3Xv//F7uocKjhFK6uAK6NyH7Y2JvI8dereqdFbtH0LvDBRcM/dPVx
	 AWTSVJpHLvvQfDaZUwpV7yluXv+C+LzqDw5flNPaOTHobAnJaqoKpvRrsXfGvv4Dc3
	 z59m1fWvLMH6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD10C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924239358.11441.9869133208058578738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3986361fef7261e0da38eb351a991629814137e2ebc055b4ddb0467b220137b7
Date: Fri, 06 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749242393
