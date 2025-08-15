Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFE22820BF
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755226794; cv=none; b=Qb/Ko1MFqC7z8Lh78smrahJnNpI2oIFrqgp276v5HGLRxiDiH2YU4O1MIswrAakt1EXk5VlFzfqn7tww5FUhn4aEyk+xDiNtxaJqyqXBtIF7Vxp4cmD4DnBi0aK3pJ2NhX9JY/oqK5Iss8X93o7d61JgXU3h2hG4j0PLO3Ln7Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755226794; c=relaxed/simple;
	bh=Ia2iemraW0dKRk6xqDGsQLG5wVt2WrntzW0MIsYtC2k=;
	h=To:Subject:From:Message-Id:Date; b=p8M2LSTv5ZFv0tbeEqrwETv+++Eepcz7YC6RyQXK1Klw1n61nnmjK2TFcQnDu0gICI2UchVt+kY6UbLoTyGHAOa9ZMVjbvPA0S1nPkdreDR+EdT7OMUNc4OOsnXYwQ74sbrsVSXpgLNaDLz3qUzD+hSdk5Vu7vd6FTs2VWVbo9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7j/ilIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7j/ilIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06EBC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755226793;
	bh=Ia2iemraW0dKRk6xqDGsQLG5wVt2WrntzW0MIsYtC2k=;
	h=To:Subject:From:Date:From;
	b=l7j/ilIPAlyPNn6FY8TE+seQOwLls8s798/DTwUOScuUjojWZxoMdMxoe5aFPv4nh
	 qq9kROnPGdUT2JH3XfgHHJkEtNnyie3YgoVdvjisrp6DCnoA0oNNOvfWV9lFvwWwLg
	 vNeEixLDNB/3sdUEMvthwxvQ5CRh6uHVweclj4kLflfM8r/em5oOiix7mtYl3O87Lg
	 OvQMykiuYGzhCEXznb+dRQGcG5CYwY5NeKW961X412dDEe4xfoG+zI0YXmm11I8413
	 FaqXzPtUe9nv3zZwCgTiNWqIAmNWA7q68KQ6t/SaT5gqJudThb4VtGksKZ+Xt9AYbv
	 PSnj82yiqAUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34DCA0EDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522679357.10571.9624853748014968331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799d71243067b9ce4ee6dcc0995e72ed517ddd3c637bf953cb4ca460be274cb6
Date: Fri, 15 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755226793
