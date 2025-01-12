Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430EB2CAB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736711754; cv=none; b=PcLuEDvS347+u9nYZkURhZ+d1NIZ+15Uu9FT0CYMneh9d3G3KF8CCBCP0Z3bx00Nc2LHXKZuHPebPdJJR3gJoqNLQv0d6bqkw5YPKzzb7tKY8YgDdfmO2b+v+Q+JFAYyA6EKrBZeBdNEaxQWwL5RNIZXHJRgoKBJVTNTBSEFznw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736711754; c=relaxed/simple;
	bh=TqWztLwko2yCma6A3BX/rWBTQ9DHKvlWd3+z4/yXZ4c=;
	h=To:Subject:From:Message-Id:Date; b=OTSVaaul4Hjjj50dCfsly7i1J578nFlAwL9JIEM0h/YEYK9IU69eyodzSduyATf4fcipCHhVNNywCaAgxomBiv9Fw0H6eJ3cY7TRGbvRxkmosnq7iI0n63c0JV6vC2NTQKTGQLlxXkFWNKNrviQ2yjk67MWZxd/zgA4nOZWoy9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7TfAP6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7TfAP6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA9EC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736711753;
	bh=TqWztLwko2yCma6A3BX/rWBTQ9DHKvlWd3+z4/yXZ4c=;
	h=To:Subject:From:Date:From;
	b=F7TfAP6zgtJwJGVZxO1ccVYKonRUuEuuN/aZ2a2o+QX40E0TXtQY9H3VJRw/s48LG
	 dOBbJcJ4UWUINj9XVBaeGwzlz5vf0KoEq4CFRhjyFpAg/WynDSDsImZaezfSlpTa6j
	 /GA0BV9d/0bI7c+r0FQ7/Ijl4pU4BDvEPjfALJbC3u43DrRq8HVOFIFnYCgGQK4H3E
	 z52EGVgoFZwaEPzUx+QU9jozUVZqqPlXSQQtzk1JHr9yuUo0mERSwyQhpYQsLdwwqt
	 95SDkE6yrxwQNVyNTeR8euhFmF7FnwpbvisOjemRK6+HBTGaX+UldcmDy6a5WccDYy
	 aA+TNh0xZ3+eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A19CE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671175359.6502.3326596738544485186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43b66627ff567b1262c98538db72b27901d5c8ef120f4c92e9d6cfb956adcec
Date: Sun, 12 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736711753
