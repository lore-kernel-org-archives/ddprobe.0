Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405D91DA109
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741550934; cv=none; b=AK6/4ZKf+di9F+AWJcIFnhUk76PYmwBKc/DzI9dGGhTlbqKNWtz3HHFdDuB2KHL2zjYQlrMpUpHG9+439h42Vc5QxE6eHe3crvziVmknQ9IDyrGfsN71K/YupKiAPy0OVGoMPvCq7aGJ80zWyz85ewmPGPWJ5TCH+mAkivDWWk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741550934; c=relaxed/simple;
	bh=hwi79cF6QbOqADKvoLLmVFxxt5W4UOUmgOmYKj0qR0I=;
	h=To:Subject:From:Message-Id:Date; b=jZ+skTeWjxl+xMQckczE0p84fMScfb5nzw5CZJPr0FOKqtqE/uQBacLvVzos7V3LZUJHRZUUQTbXRmj+G90FiSriaWr/VkqTXV2RCRba7Bp4TcUT/1p+TJGeiLarjGm4DzO56Q8Zxdwxn14WD8bEToNTzkP/AvT4gshSsjWQGT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZjXTBs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZjXTBs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB34C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741550933;
	bh=hwi79cF6QbOqADKvoLLmVFxxt5W4UOUmgOmYKj0qR0I=;
	h=To:Subject:From:Date:From;
	b=XZjXTBs2Tt1+RCSwKGCI53vqXnV6MesDt7OMGZYIUaH2d4WJ5Gbp4Joel+OpYIQnk
	 teqOmuphDUs1fg9LeX8FZCTDxQzxy1bmbM8xLyNWDIyPmZP3gRkwlsE3Qj3NwcW9Cw
	 llVTK+L1zQ/sjUpEcLC5TWTilM1bAcqq8XsLMeLMdVhTDHcg5bfKpuheeIXBP4dXBZ
	 HZ13nqTBeNCgGT0kHydJt+hDhBkMwhUNPQXva5bngzrpJjcbBhTZFDn5a9ghoVc/Ic
	 x2sNL74+jp8wwt/3h7pqLUNeiiVhKq5DZX80xK2D+Q5XK7ylpMIbqwP1BCKZonX5//
	 GC2Wz0IkIQG3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A2FC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 20:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174155093358.10500.16145819283082330185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec30458f52b063807e3652551cd7a45420c7700d993d45adbad51a96c997670b
Date: Sun, 09 Mar 2025 20:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741550933
