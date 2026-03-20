Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5AD3D3016
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025094; cv=none; b=SZkw8d6VfVpoAMWWKMCenZ/RluT838dGJYyLJTLrYsTYZXcNNuKRDl10rwiq3cQ/32DnSMiXXRDSrlSPiXBt7J7GnNDsao/Uc/sH4mJUrSFqhUYxiB0cdzkxbQ+/Lq41OeUNUCDnLR1we5088jbLP/7JJWdd+l6NYNuPql3UzBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025094; c=relaxed/simple;
	bh=08w1CMtWYXePIHBVP4/s0h59VB7sUkfCMzK5UdVcSkI=;
	h=To:Subject:From:Message-Id:Date; b=uFlZXrzDEsxkr7FcTo5sdGi6RQ7j3YVcXENtGTF4s7I4teolp7MUTFGVCWVFI+pU1h6KJASHqr6XFUpdVKCK0blvv7fUILs8h3mdZg+yPnxUgAcN4sk0wcJ7kqG3qqjc6tYOroTqzEyjIuZTWFGdMUDjS5T4gIulncRg1DtQDg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx7b3vQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx7b3vQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98164C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025093;
	bh=08w1CMtWYXePIHBVP4/s0h59VB7sUkfCMzK5UdVcSkI=;
	h=To:Subject:From:Date:From;
	b=qx7b3vQ8M9MxBWZ+9Hgt3PABzFOgLjSlE0/+Kz6PkX1529FkjCRfoP5QZgh9YdO6F
	 frQ6BDK+nWKTTa5WAnyPK3K5Dc6kQ0leKfozRF2l6xSPa6EEQNbTCucbMsBjW5Rwqz
	 4KKIzG3hONbv6SCAGXPWDRJI3Cp12WPfaPcGenvZ5yFdiy8qNQdwHtZ1DVyyAwgmgw
	 W7fwFYL2Kvc6OsA44XZXEz2y//F0pVlPkefABwveQ9OoZJlVBkwKWZ8ax2l89LJ75a
	 2nxkfEC0qgVYA1WVO2wbxwqPJ9E81KXGShvqjU8FDagk/NE+AzEZOo/P7ILSbzRJH4
	 E/LgInb3iZZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3910987B3
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402509358.17802.3609153087952455594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebba3991d58c6063be27bcae57ada421452e7d9c741cada7bb13f2784daa705
Date: Fri, 20 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774025093
