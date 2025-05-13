Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434B01C8601
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747109994; cv=none; b=N0vL8V8I/wKw1SKkqBkeAFgjTdInLtVY6jhCNnJdadRuC5keRacWVK5EnPmzFOCUH8uMcUMeU+qwqOW/Z0G2hdGiDWpLTfJezHDFNCXmZqVWm9THZYaAx6jm4aDMChWWOKldhohD+ga3jGfhl5klANis5ha16FdoVQvDMzHPRIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747109994; c=relaxed/simple;
	bh=AjeZjoVvPj0tBMNOOHa6j5kgD7P9pxESP/ig5ItU7Aw=;
	h=To:Subject:From:Message-Id:Date; b=TDzHilrK7PBoTq7c5KJXYx6Zp6itwmkQcpzDnMZ1FW3hw3et5NbZ6cmo3o/+ZbP4oq0tsWyLzQuMqA2kjxzH6ckQhikPo0Th7MS0xVJ2rU+Px+Sf2sxqSlsSJS8rSxLwsBvZtg0N40tnZygZThso7iDl/tfcKtizfNLvBxYC/2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5dyX8he; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5dyX8he"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60DBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747109993;
	bh=AjeZjoVvPj0tBMNOOHa6j5kgD7P9pxESP/ig5ItU7Aw=;
	h=To:Subject:From:Date:From;
	b=H5dyX8heEKvVmUrAFN1XcHeLVm+Er0V1sDgXycgTPeHI+3fzGJdzBMOcLAmoTx6iD
	 BeT5/3r1M2l4LVbSFylQxXujEtiqT4K1+U8dX7+6HTJHh/l6rXGzZA4KvCIQNv6t7i
	 bptllfwKpWGH2NqrRe1drW1qcrtgpo91w3dO5V5cC40VEQb6BJwrv8fM1QJ+hKZvtk
	 DVHWOsP3JhrAuehZwkgo/BCaLOszXwWVOK2EQ9rWojtgNHsZ0e05/KDom+/FBDsDE2
	 9ysMdAovUY+48YZwZYnDBscNEPvjqCvWXIfQ+9AgM8GnWhfBUrJjtsrAqOqhtEnrxB
	 4pO21mUX5yV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB7FC3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710999363.8687.11548966559934833946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b599cf40c2025dcb072d6f8a8dc7877c002de80e4bad485cc2ab5a8c8eebd3cb
Date: Tue, 13 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747109993
