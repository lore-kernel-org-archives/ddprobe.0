Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584496AB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717820243; cv=none; b=OI0/vOc/uyqDnk4VNcxGzbM1naw2w2+54g65DXF4yjCnvjYMbr5Xdw9xdMD8hNlHrP8xEcPs6n4vBrGbNNJw4hPUvvN6Y9OnNuzO1CyfnPGr5/tUxt2S/tww5TWJd4D5q+DDCCc2wLbMWjJ2gp+Ud11pG4tEwX5Xp0L3NoMjEjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717820243; c=relaxed/simple;
	bh=hkxykdwMpFJ4PeoPsGOxqvzN5voolnhfMAj0PGWs2r4=;
	h=To:Subject:From:Message-Id:Date; b=nPZJOS9/H9mF7rmHv5RCZ/NIKdrFjOAyZMRjjyGBZszNkoWyMZ86b+QGgX9zzjtJkFqeGJEZh5I01UK1KU8/aE/tHEgDHaHuy3LWay5b6CSsFW3JqciI0wB3xWcz92obp3xeeMlBigfS2g1f12lziq4EhPuNpqfd7cuAEgRDC74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqi21Gh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqi21Gh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C67C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717820242;
	bh=hkxykdwMpFJ4PeoPsGOxqvzN5voolnhfMAj0PGWs2r4=;
	h=To:Subject:From:Date:From;
	b=qqi21Gh2gLCIfImGEtRKZdpBw4x2RC0IXSm/6rTH9JBiM1A9oPfk64pKvpxrjD1mt
	 cnmgARZQEvR8NSFexUubEAil6J4hUJvAKOlvi+O2rLfoz4FIFF8bDsqYlk+W+pK2cB
	 W1koRC+Sl3tcNIDpgsactpBen5TGyoTvUK+jdJBAmoynYLyN8F3PYgrwdC7TMAAWLz
	 b2aoPHiV1nDgTj82HUd8WL9Dl2JQc10DM8t/3KJS1kn7pQmYTRzYRtou1puRkCvzP1
	 mqiDMKcCtvMvQGKMvEOjB5sZAHRh4aERSw6LKqXiNrGDLl6EtF5cD7C1iZhnVznRDL
	 fWa+/TTXSk+/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C211EC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782024277.4853.5445012773458016796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da362f059bf3f6e4dfaf6df04c979a476acc04b1129059060a818934d776e9eb
Date: Sat, 08 Jun 2024 04:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717820242
