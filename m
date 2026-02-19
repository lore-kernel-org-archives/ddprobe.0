Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C43F2C3268
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771486494; cv=none; b=aVxh9uYLMwtDWVYob/41OCKY+sKTJnhkc9+VR90HS2leB+HTUMYNOu8pLewFP3Ix215ZFH22p0eMOOybrUXURGOghLcpOz6BggMGjlbPkEHX51gVnVuWpCWQyX4kJjjqhrIsMfiugNGy7EXPm6V1TNw/dv7gunbPchOBme5l/UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771486494; c=relaxed/simple;
	bh=rZgYYRYkNnuK+sj0+wlXaKJ2EkPwfqZhbquw9TLxjlc=;
	h=To:Subject:From:Message-Id:Date; b=Lx2d0wZqq7lhAwXhC+Gd0RcU08ZLd4OKlIXyapA2xkxCP15PGMq85yvzgoxlIkpGo6qkavPsG49gcKb6PN1fSo6TEhfor5elK9RQLEorpCg46Fnp31mcys1PsDlqQJruBYtnR0d0ShgwqP5MjG0d5pmSe7PcVIXXJB5RtgqTXBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPr+c9T+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPr+c9T+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B66C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771486493;
	bh=rZgYYRYkNnuK+sj0+wlXaKJ2EkPwfqZhbquw9TLxjlc=;
	h=To:Subject:From:Date:From;
	b=PPr+c9T+5GEvQE791UTLtQhtD9XBAYL5CF5er/swBJ8q0HhZFD+3kuF5bG6VYVRI8
	 jB4AbXZ00qZm9NO8QviKKjWAo7yCRICQPptcrwsfDIkQbX4OgZ1WDwippD8+uITrP1
	 PgJD2M0QouLI5rQCf7/p4eMtzz7DUPx9+X+379lVMikkaB2oyR5hboK2olBSHq7qkn
	 YS/VQcKn1y8wEPuCqjQ9NIN7LCNbSUnrnHMrXTlvPZvV2xZorxyvca6Bzm5reAm1SC
	 W7PkjnUzylCaYAKjsLWcCYtRINLISVmun/GZi9Hd3am4VqwLkRJHQkLZzSY1cGF6Ur
	 Bh5UGs4M+iPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC8EE9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148649363.28886.608334363886970506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b8b4c675de0fafb041195ace26642af2f3d26054f88f9d66c9cb03ade3a548
Date: Thu, 19 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771486493
