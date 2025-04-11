Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B345221274
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744367394; cv=none; b=ND19FZASnFrd4+emzqjA4U+CW8ELYaduanfsNbh6H6MGPvNboDK5XPJByRsCOCbDR+mF8Pn59DLyFjo5HQrOShnqJmzf1+3UtIl2XNcBd0g5LN4kmKVYTaFU2jWUbA76tYTvZuNsmfGos6s7bV+662TwEu3nv111k2IIdsfk4GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744367394; c=relaxed/simple;
	bh=Ezvi8s6qI/OKZ6g5Y+uLphvP2tBjR525qyp0aKwbohI=;
	h=To:Subject:From:Message-Id:Date; b=J0pKFzSMPWbfYPd+EACJveorUT3cXIA1DGZkgbioxXg7otsTrlBU8D8C/9hoIAgGnSSbos3KFPOfrBoTePR+3IjAxDKckhIGZH/WC9/KqOhplA9+8df9Iy8VggoSAwlq/lTVY8eDLRU+BAfZfwa1RqfLR/KH00Gq+jG9dONFNQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv5BDb3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv5BDb3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7073C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744367393;
	bh=Ezvi8s6qI/OKZ6g5Y+uLphvP2tBjR525qyp0aKwbohI=;
	h=To:Subject:From:Date:From;
	b=Kv5BDb3sFDmz7YNCuacv+R4ZrcYhEk7eQw/jk1w2xuCp9X8BFZCvDPX1jE0fwpalo
	 AZ8e0nsaW/Gnu7LthoCMlwxeRsk32j/SLSstCLL74vN8D6Y03c5ubLcNnjdQ5KdS+y
	 mxJgublZ0TGgQuXc6u0A/3W5V0YzyueXpJ3Vy0QRNgHJ7Fcy/eiVEjeNoBZTNLM1xh
	 gS1VaQU450B6uMD7FAaYvEEZeVpojvRk6zgr43QulXVG7R4ySZi+hKRD5mP3+jwggc
	 w17ZBX6xQeGcXdjG7AFeJNA4alr6Ial3aWMlKOK/kbA/5MaRRgWzAQdOVL8KC0Pd2P
	 Xbsr1RO/Lj7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99951C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436739362.2375.9561009354534069367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39cfc3e1349dab838ad3d9f71be3c952a9fec213a8736a94933622e03c447256
Date: Fri, 11 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744367393
