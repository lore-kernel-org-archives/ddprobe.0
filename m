Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B856337BB8
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772438094; cv=none; b=IlhWSke6dy7eOoVxfmiZSIutWtJFF9Hnr8wvj3gJ3N2MLzVbEFni8VUFozJVCqJSpzxePygQGAbXh5N7m5rEKzczGxRzYaGLiVkM3UZpLimvF5JYifvwfP09AbUHWrJOWU9N17TbEu1on8hlxXQ8riVrmtr0lw/8Cr2W8miWMok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772438094; c=relaxed/simple;
	bh=FU+4TlRDCjUxILFdgbVNiVB8mevCTJF69i4aIglr7NU=;
	h=To:Subject:From:Message-Id:Date; b=AbSKqOO+APBEuwBXb0xAUtvPx5Rt8+MuoUKMdb7pg/u5k0vZPIH8r1UI7tH8lyEZcSseUJ5ZqWQqCs/IuLtFp3RLRMzWUhdZt8VKqhDpNo7jZUbQtGGQr5cPjPVNBsOnLrOA+N/AqjA9iFQNmwMMkxYWRMbmyiu/0TZZuwMBto8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3+c7+6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3+c7+6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6458C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772438093;
	bh=FU+4TlRDCjUxILFdgbVNiVB8mevCTJF69i4aIglr7NU=;
	h=To:Subject:From:Date:From;
	b=H3+c7+6NeopEHS3hB8XmP9+16LcLLdxcxEhtrjBjlrVhr54VyOSCOWLGGHTcTXPQf
	 8PAWdi4/OuI9wBmvVSlQaeOwGNZdwKqi3U7CC1wURacwKfZh9swawEec1DsgV7DcG5
	 jihQ8iKkwJZQQ7xhzdE62m7fGIhxDcojcAIQX+3GgOiyljCYCEib/CwO3Imy63jFP4
	 4A6bZ5jXucE6S9j7jPPIPO5qs9Y++SDMHpYZfxi/QuDCUc96FVLUeOtOWRx2/rNQ1K
	 F05NMzyHQ1y3i1p2xeWG7XQrdOd0vOpjD9lnSc9f/Jmo4ob08VhGDfu8bYHDX8oL5Q
	 GcAb8wIaao/8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6BCD58E79
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243809361.21190.3682723611755126342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fc47f6f88270ed55bc0582cbdf70973d850618677fbdaef94eb829133cd65c
Date: Mon, 02 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772438093
