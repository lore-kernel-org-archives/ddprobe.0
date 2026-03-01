Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E46288C96
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772345694; cv=none; b=NUNxpPYIV/jfXRoLZWC9XEMQ/vHdlSJcox6ljoAhOhIH0cRonlpWpxe/AGJVjdlswK7kjgZwxULL+Hv4ExJCEc2mNz8GQ+K4y2kx/xkw5YcSYS6he09/rcLOHx/ukYi4POsWCsms1g1lOHlBb0ha+3slKfqUUG1LVlQ9SIpsxeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772345694; c=relaxed/simple;
	bh=sLNLORvYb0EIpH24wu/Tq8b2dA5OpXmXsyOi6Vw+bGA=;
	h=To:Subject:From:Message-Id:Date; b=ZjmIJxeS+QrXP1BrcuQLmr8NpU3Gup0vly+AB7PFERXor40JWnVCrvYpCsF0H9yLAwMRpVYbrCqsITlBFyaH9saqy1x0x25zYX5g9o+YVFlxBgo7ofozxYnXLz809ssTPfyJM90ymjPmA0CM8vYq6sUdDAZLQ5fKTk1mykMLp+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfV64MN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfV64MN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5B0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772345693;
	bh=sLNLORvYb0EIpH24wu/Tq8b2dA5OpXmXsyOi6Vw+bGA=;
	h=To:Subject:From:Date:From;
	b=LfV64MN/YRa6T4kS42ZYgKRqVmi7+CHY741PDDvw/e7PrPSg84BRoT3NlykIMCfdT
	 0OFQ3547bBAG0SIPlS0zad9HyffCo4ALA4KRILPGxEoK7D3pwJE4wu3d4ki619Wozn
	 VzpZSPfRPG3ZUK6ZDLWLmUK7kNfTQXC2zQZUZbJcGOJn1KAccV68IAhGLIkC+XW4nt
	 8Vd7XlRuxHl9DjG4HdrRx1YVbDEhlha8u7YBu3cowq7XuwHirUr9HUh2wm5+cNmWAQ
	 gF9b2LaYvKFYqCCw2cgvYLCKMsx0wkqGgAQJPSzMq2MaKW4EPWru97Mfq7G2PAXqWM
	 FfP1Fkdr4SSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44B1FD0047
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234569362.20667.7478021665870276162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87f7187cae0081d3890daa0adeea43fdeea88c550b8e664f9d85a1c9731c3f3
Date: Sun, 01 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772345693
