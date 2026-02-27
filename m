Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EA82E11DC
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772204094; cv=none; b=M4z01YWDTVTkaZkJYRriXl4Ncvnv17uVWr8z6X44JhrOAPAUrCyq9go6zACfll7H6Esz6LJSSc8gg+9HAyayQ89LnrfzRyE+dT3CR4TS3+hymfsCEwORfDPDrxOUMb157G16m7boYMy9J/ekYnQ9rJrl4r1GJ+yiFXSCqfZ/prM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772204094; c=relaxed/simple;
	bh=+5qBPVcjylXqdJJ8lDjBWyUqE1bHvPwZ6ZvSJ3ixA1E=;
	h=To:Subject:From:Message-Id:Date; b=KjmKGPIp25sI8zA6lvVF43lfIz3r5Gg5w/N9ALjUxco1HLfPvW8i1iKAfYbwj7OQadF2XhmtR6uS4RI+BaNAwc0hlq4pNJeoqHn/E++YOkK4T1wef7+sJv0y5dvS8zbTcT6rhUVp+RKw/liPgj6n23xfUEHGyGN1aFl4tUJhXh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtSReEq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtSReEq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6641C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772204093;
	bh=+5qBPVcjylXqdJJ8lDjBWyUqE1bHvPwZ6ZvSJ3ixA1E=;
	h=To:Subject:From:Date:From;
	b=gtSReEq/gUcPNgsXzDuDG37aUXA57+5FZr4c/b6roNYxVX2h/W+Tuce2BhRIetvMa
	 fFrv1oIZWYzRi0cV2l8tJ30nXlPYSSKmGNIR1Ji1In49Wg5umS7s2POfYptgXBKWxB
	 4za97WnHifmRVULQNVtPX1+5lctWjLTDJYWVeDMu+m5oV/8S8Y2U67EBn1/u8S44Md
	 DZskwKzIIbXaQO1CE7D896acmIrlgKJJYXl8Zz/MYRUwwe4kGkOh95zUAypPxiQTz4
	 3+Qzns9RmyEWXbWFRvwltRwJuQJWsIKLIWjgOkTHmWdkz8+PJyfWpfGNLmWTOsnCFO
	 ZD7f6B/Cw8Ucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94087FEFB54
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220409359.6184.6441120603154423603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee49413d6747166860abeceefaa6f1590dc29adccc1ee0de5d82f7e4b87095f
Date: Fri, 27 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772204093
