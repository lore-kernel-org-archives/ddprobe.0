Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960454E4321
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791558634; cv=none; b=C0QyAbP6S5XkQHs/HXHhQHyP7G2R1HJvBeInUCfnwhrTUqX+Xx9FxXNmMdlkBOJoFu576fz2GeJdoPw/KbLls0Y3LVwNGQw6E0yvIhex86x2LxoR6q7cHKF/i1KGqXH9BvtgBwpUpdw8ZVhSPVA3F0D2SBnwYmIIcaMdeknizdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791558634; c=relaxed/simple;
	bh=AN1zwTvosxD5cSsb5jfk4xHTYNuW2MHDkqSzvjKYlVc=;
	h=To:Subject:From:Message-Id:Date; b=DOPdgd7tNF0kvijRcvqRSKttRVGdgct4QSeBbS6TyB/MN5+ISPIuQxn78Cx+94VzRT1v2CDTOFlqH3+wGMrS8DGxHEY8PpmXMRbRoZuweeoswPJy/zTqu8gXBQ590S7fN4eyV0ZaWw1VttqB2tGx/ygZ/4fK9iPvWLVEBsBQ5Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAWIaEdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAWIaEdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7416C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791558633;
	bh=AN1zwTvosxD5cSsb5jfk4xHTYNuW2MHDkqSzvjKYlVc=;
	h=To:Subject:From:Date:From;
	b=XAWIaEdlpJu1fJeXRHYil5mfUGY67CGNU7ZGLV28tXSWPYVlxKv4IdcqCz45hK5Ei
	 uTjnHfekNBJKbKFVL+11OUTc0g0/T8KB6YZEkYeROR86ksq3QdgnjVzeqclguSBTb0
	 qc4fT5i0aEDW41gaUNgLnDylgnD8I1JKi98b8p/jjkZDHkUGpr3xDSOr8aGEAPz+l4
	 XNY1s+nsZP3UkuqJC1wbLmKDlZ2bmjp4oQjBwkJbbCztZ9xHQR2TjdEFwGcK9wTskS
	 akjWM4UPL8M6dLk/X6DQGiowa+Iu1Ezs+xOLLH/WDrV6SJShv/ZPfjZIKffIwqJS8r
	 4pObp0cpTkK+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B38CA601D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155863372.23974.18233699118715569254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2dad89cf068a2b84b6594d14034d0da2c146dccc165355b87048173f44feea
Date: Fri, 09 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791558633
