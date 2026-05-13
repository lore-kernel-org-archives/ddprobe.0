Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B1F3909A4
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778710834; cv=none; b=Fy4hbjCesGpQMCbRdr0VGRdZektX9RWp0AMPUCj6+hVckfNJAWUKrLjWajBE44wa3KD8YM8snFxL1OO6jxer78O79HNxyf3+JoMgPhPDWVdlJ+7QQCHghWxuVU5ykLvfBmrSGva5h7DVJlyZlmI7l4Q8W+wV+PZzN+0RTLe8Oms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778710834; c=relaxed/simple;
	bh=LqHe//UiUHGVu9+lJKW/yRIi1FHByYwLJiyhdZDtbl8=;
	h=To:Subject:From:Message-Id:Date; b=b2TOmGvf0RJqBclN/Taso0iy8sZkw5+5S+Bm7Gzv3H7vrfVE7FgOm5bYh5NkfSwn6r4SuZHwjvOKaIcHKeLFIfOHpbGvCPcvPiElJPBUZxTA20CNFNf7cuP8pfHWdZ3DK4sbXK/P4kHff7f/DoX40JSaqA7KPKhp6kMsSz+yQEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4fgU2kP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4fgU2kP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13E5C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778710833;
	bh=LqHe//UiUHGVu9+lJKW/yRIi1FHByYwLJiyhdZDtbl8=;
	h=To:Subject:From:Date:From;
	b=A4fgU2kPxARNiWRZVyxBfW+iYCVUMy9hivQ/SXrlHWVrJY5PKZ+vBYZDENrjV/kh/
	 KQs4CpTd2bhM9UwCZDgj+aIQeKsp+EF5fVJFSJRMQJR3F55FQlEmdOYlpJhgtagDRO
	 gznW/EFyOrT5EgJLXxQQ/dQ6Gnj7oIYP9YrKQV82+osc/kyYh+OzdClYTQFR31kRCh
	 /W7NmKZmpQCN3ua5h36FKDr6eGmEbAm3nFkb4qJBt499dpV38cpT/pPul0JY0/lNWL
	 E6GwqixoYHdGerg7IcL7B9u2npUo/3G5MWKtPTFxxIrcysPJQZwOTsqjD3jYiMUzVy
	 lISYaeR4twFzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFFECD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871083369.29983.9317624741407802156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514ebd50c07674a4609879e3f683d05a0825b70588d1780af5c7e27c42a2c6ef
Date: Wed, 13 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778710833
