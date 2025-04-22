Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC191EEA5E
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745318994; cv=none; b=pzHs6xkuTSbXVAnc/ueOQl6GdgRzBGVA8wpEvp3V/hJtOixiVKUkmn5x18pL/8FCmWgwlqYV8JTPzWOn6SZx+vhiQK4wFKrW44I1MdrnMeBZaXNX4RKLTtILkKoAms1/QmGsQqVkVbO6PW4PjwNgn1hZamCoZcWRSYij92eclXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745318994; c=relaxed/simple;
	bh=aHms502SeK2gbeaRd+AIT7aJNxU7E5lSQw2mmF4fU9M=;
	h=To:Subject:From:Message-Id:Date; b=B6ZWpfd0kqA8OBY0LQDQA+udctMtD2FJK/ii2RwqKk2GPkRtg+uioMnx3dcKPUD2mx8zbXjovFgq5a9GFV3U8ah2z2MmyAqBGC1+KtSl4ySxCXAI93aZ5hsjboINz+hTVNRqVUL8r3Ou8lf3A6KEdXfuu9DEn6HIjCoFmQXyLVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdvi/0b0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdvi/0b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0505C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745318993;
	bh=aHms502SeK2gbeaRd+AIT7aJNxU7E5lSQw2mmF4fU9M=;
	h=To:Subject:From:Date:From;
	b=Gdvi/0b0QtQRUoi79J58oEBx6Qw6P1Hpbuhd6f+aStmThBYDkJ6EzbbPbZ/zJj1/D
	 +VK+XvanG9a+kSAtmCWQD4XH5oRVPCBI5Q0/lXaSu7XlfK06HZ7JUm45GinKx8mxqk
	 5QK9soAjwu1qnHzyQPGA45ZjiieA+OfAvV8t6MJn3aIsXCq5cn98BXLTpT7JjASNRc
	 SMJxS9jbcZTzurpoc46tW1IG3Lm4jLILaFOa5lelZe/TYtfEUHzE1auwLjcxfJFvEv
	 gWctxwV5iOUQ2ktSWfICSCMEEJhmiLcUgt557kKYYg+NTCUELB3TgwyD+qyRzzhWMS
	 /GqTrG1J/d12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0B1C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531899364.18776.3416277613851256762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a7698b038ea32df55adbc47669e69a424a5ae6fb8b4958236c9336ab147197
Date: Tue, 22 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745318993
