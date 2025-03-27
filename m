Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464841FF7D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743067794; cv=none; b=uCvCn3KhZDj91FI+vWo1ZtIwcv3a7YXr/ivn7fjvWfZIxtDrYdlUKQaSO7v77G1liBUMbRP1gEBo3GQJfB32YM33KOzDOzYxc0pBSMashqsf6uVLPK1OeIcXp8NNoB+rOUe+KvwZsBaVCDHkL5ej8Xvs2X8k4+H8WZwNEkPXJc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743067794; c=relaxed/simple;
	bh=NBwh2/rgYn9rlu2XOYck637JaHjn2I938pNh+KXdzbA=;
	h=To:Subject:From:Message-Id:Date; b=bd3JOnOnz/jOGDWeCwZChSlsj7EjwUFhmvAD8AuYxB0GaxeVfrePzjJlXFhKDvrQoS9jY1aJqGAIuczRy/8K1TZPP86VoOPcVFZCC77F09pQAmf6SzTKlKdPTGe6DfeCncgF99HuvOU9vt83k52c773XR7TjGOF1J7ZHgkrVYek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVZoIuJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVZoIuJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9852C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743067793;
	bh=NBwh2/rgYn9rlu2XOYck637JaHjn2I938pNh+KXdzbA=;
	h=To:Subject:From:Date:From;
	b=OVZoIuJ7X3ZPB+qJSn2TjXQt8MHBgaPdt/qvWhmk6I/LNlGFfyI4sGFs5BbUKuW6d
	 hKIoXd+kv82GeWLxUSl4PINe+/z4Zyy7ZGW8QO2f1+X53pD/MD+mCqUMye9trLxuR5
	 6SokMrq90zLSNQTAj5Srg2322MreP5uzpjfX15ndPHlBA10cIvuaW6b8/WgM0ENqVN
	 t2Z0Jf1xl3bS0k5AErqTL6d16o492o3M0WX9C+LiO/GxY66CjmkXVn8dqjUXLGoM7E
	 OnHqEwacktsRVtJqUY07daQvY5UUIoMnjKWKAsdkQhWEEVNyhMKEIAWFf5xImzR+JL
	 evsOLCfMoW6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4798C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306779366.18133.1097649279902376883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f53edc3b8894499c9fe29bd0b550772b05406b822d62dff80d80de9752807f
Date: Thu, 27 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743067793
