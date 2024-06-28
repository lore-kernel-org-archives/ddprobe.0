Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD2719D071
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719582863; cv=none; b=AsWLSmRhbP+TnP02eTxnNqPqfPpQWbO5qQAZb/h04jX5YgYPifaVk2fwbnStXh3q/56Bzp/YLyqwSYRCGKStvXUN7m+qDNrQz7eQ/mWG35+vYrDRTs+7pJLa9+WYfM/Ol934g0xOvUXOZtUJAJJar+qVerAtog1JJ5QDZcjYUOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719582863; c=relaxed/simple;
	bh=8NHvMwRL4hN4yL/7PcQmyf+2q7c08dnYURisK3XOb10=;
	h=To:Subject:From:Message-Id:Date; b=ImQnuG2OLaZeFbPQM2Y+bnSJRhNTM722AbBthM0Ld41Vvhw0F5kAjmHZL/qIBf6qOIqjzdAb3P20HuaiPNlv5plx/zT4XVCiJ4LgN0d+7RMFrRWAzFhZ7U3YgUaT8F1GPkLQZh7AcMgWymgsuYsCsg9UjnDh/oGco6XcAy8nhDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpsBfNZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpsBfNZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A80C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719582862;
	bh=8NHvMwRL4hN4yL/7PcQmyf+2q7c08dnYURisK3XOb10=;
	h=To:Subject:From:Date:From;
	b=mpsBfNZ02xMM9I/CLEpA5sHVEvcsrNmDL0qX9OhXCnUaLRDtsf2vEX8RjnlDuJ917
	 t2ZbX/yL2CSYOEKVu4GUvsRNfMkrmWJHH1bBOJX83xgQDTrM663UthZQ/b/JQjdMdw
	 51U9FuRxUEYRfCGSryTa+C8On0k8Nf4CPiwATAPG0Taq8F48Y86WujvQDHf1gun/wx
	 Agbipvry8qCRcIX5d+GXflY1jF9eTlSMAGFR4dS0feQc17XCcV8+s+x/H/ilwmwhu3
	 qPXR2LtzfxdI5qVC/FveTbIHZRPagcmOKeiCabKSFkFV7zFllVjEndqApo0q5nNXPr
	 Snbk1VwzSI9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C325DC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958286279.24146.7285026472806672495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8678b0b416e58ad1cdd0171ab2ba9b833ca690d6f60d8b23c2aae7d332c3b7
Date: Fri, 28 Jun 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719582862
