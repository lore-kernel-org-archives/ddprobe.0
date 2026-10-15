Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C504A841E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792100434; cv=none; b=j48Z1NQuvBAqePtBf8wM6z5DtSTfQFPEwtfixZEL6/Uyy/ohNSvwInUL+lBUVJCaxIRv7TSScGXxcLrCE6/VyldCZES4S69aiv+FpsJdnCN7i66NioDMpE/tZDpjp453KwcFGWE48+9iJC7HEUhErZcMmx/Ogv1jMDrYGsLzS7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792100434; c=relaxed/simple;
	bh=8HYqRExLDPuyCDh5HBvjbO9BvxylBRUd7aekeb1pBjc=;
	h=To:Subject:From:Message-Id:Date; b=qjKS7edFksX0MWbBOUaXuXY3gX9LV6p0TGqS2VE8mOXF1fR8w/3UFHzG/HTcRugo6psrGLGUROaoGSbkNRRduwiT4+JrTKt+VDmwXQrErdGUlMLkVRh8NmfWNiFiQUwnYmxKsWR1VEc19Y8fa2007jIHiGHqfvHe2zrevBSfTlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLdTr7h+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLdTr7h+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF54C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792100433;
	bh=8HYqRExLDPuyCDh5HBvjbO9BvxylBRUd7aekeb1pBjc=;
	h=To:Subject:From:Date:From;
	b=gLdTr7h+L/PaDNxW50dJ+yABuiY6DrfUL8DlMialdRfMWAx7OLrXyhr3ipA+RaloK
	 naFhtMMj8b7EBqYMpMgeaZ1tCHrKPtx4Lii4Yu0JE1Vj5P3LIF2FNi+7iBAEQUqMpq
	 DjKzt/+C+pB6oQWolRS1MoPY86tfCqLYiJduZOKm3hJ/5APibbGe0S0XhHuLF8KYOY
	 8Ksr4NQ8GZcfY5piiPSb2bTgfA1ZXOuvXU+dg3txWWRSpAL40sl5Cp/KiNHkLdtPe6
	 nb3Prne1L6lWE0bRIh/X3eMJNGUid7CrIvXQjZMUVU9JuEQKnjQZKtKiOx0ohAoEb8
	 51AHKmnvfqtlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9709CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210043368.27138.13212595209182904471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4464bb452b84c040cabead3686ebf451866d05dedd7b40acafec201e6b157b
Date: Thu, 15 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792100433
