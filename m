Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490421B96E
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712896163; cv=none; b=Ni2hseDWM/xfU4lE/J++o8XhQMcODnTc6AdzqPinQwATzEpMcgZ+7cHytNOyn2Yil1QyUHoXHokE+ItDPk9t6R6/m7xdNzOdDe7QNnDsTnWOe0T9z/7wAJbuvzABAcBJWEwYH5bodk7kJcPjMqIWV2u9zzYS9rbcPxh6DinAr3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712896163; c=relaxed/simple;
	bh=sLzzAr6tcPCkFyI6XIK4ng3bowPerof0C87P4rDrGvY=;
	h=To:Subject:From:Message-Id:Date; b=HNBUm/ZVk+1lz1+9Xg13gQ6NfpHx85BPNWJtlLcTKrdpWz+xrJ01Zjya1KeBTdSGsXjz6CWV89QCUoDv90oVwZOZi0BtXpI0y7rnmsmhhcz/e3tcg461f9gLc4du7h1ZztUklIwR+Vw6UwvKaeexRdsS8F8xvndrHWQ+h0zc0t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obXKTITQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obXKTITQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48EFC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712896162;
	bh=sLzzAr6tcPCkFyI6XIK4ng3bowPerof0C87P4rDrGvY=;
	h=To:Subject:From:Date:From;
	b=obXKTITQztt+5DQVP5rGQ0xRB4HdP3WlHqlNVKbq8p89eQeZt88BW3BwQ9dB/PuPt
	 0N5uVtw2B+k62UG85QYnYTvg6Yq0c6hRbdVlPrIoHnLgfK2TQOV3UDYZhC+ILWE5z6
	 3bBsD/bXik1IGb02tcQev1Eqj8r8i6q0jMJRZX/gLRy9ezrvBgwhPf6NlBflqQkN2z
	 vviCQQd0hLC26uxMfIEXCgmMSXe97Sv4Y6ait5Qfqd0J0n6DYQ/GFOJ+NJ7BYxPK9o
	 AeNhyAVfART53/U8tI384cX7MV8gYgYVF3FIv7asJMVJS1yKCJKamtTTRZk+22kGek
	 HTIY0ba2K2x1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1992C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171289616277.14620.8395445059696303154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d9168928482b927ef2033671389bd38b12cf805455652e4d5ce986bf36f098
Date: Fri, 12 Apr 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712896162
