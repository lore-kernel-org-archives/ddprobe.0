Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B223C1A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786060834; cv=none; b=FmCJAQXWqbSQd96Fs8W8gnGAUXyo0IVzRK+HJLdf4rLnhHnFO38pFYya96b843FRgsjFJ5pLFsEovhXn99tfhacQLjniA5B3Frn/bXZRUs4iJUFNMykEjGziT0pa131gOUdcN7AEOP2E31dJEi7kBjGiuJF+7iWK5yiREP7EKPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786060834; c=relaxed/simple;
	bh=8P5n4NdpO7iyHf2HTZ3JP7mTu9GIv5YnNnRrWXF5pNM=;
	h=To:Subject:From:Message-Id:Date; b=sMntMt4tg6VhgE4+LnDMiI4bFOQ0+zv7kU/SDkq1RSSz2Vw4mPaSvW+CPktLXd3L+BIdvUH6AcL0CQ3ShD7E/sUKABbd0SuXQJ0i/Meh3dfb/nK61dF52nxjC8Zn6M7E5J72CajweVNCpPF+4rzu/xHmmTnGEJyl1Qk3/6DD8Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/DeI/3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/DeI/3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51DCC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786060833;
	bh=8P5n4NdpO7iyHf2HTZ3JP7mTu9GIv5YnNnRrWXF5pNM=;
	h=To:Subject:From:Date:From;
	b=A/DeI/3DmoDl6Zs1WjrDF9UJmnXke8knpHNBs+jXShWROA1uqLLChE8hIwlIyT7yO
	 2V/Nx+zOvfAv92UzuzZk2Y5hxBqtWt7mntzBfN+jIrnPk5NlatkWamZWC9FB+I7EaU
	 KwjT3TGc8s7XjgFzPY8Rl3cxyMKL7xpMHBCLiXJiJuHmbvQdQLfDrrld1fVQ5VCTFo
	 RyzqQaVE4j01XbIVldkiFefSy19Xc3KrrEXDNHgFhZOxQsB+yEMWHxYNNOUTkKjSfX
	 4eqWzgi8PrsF220+o7On7xfarNRtbdHzldbAwouPpZsRw2UzR9MZjYHws3Ipk5Wu4I
	 F8UCsEAie4ekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD79C5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606083368.5531.4823203909071096587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728d7fc7a31e39c7976812699243b4100212a57c013fbae52f60fdbd9a4f301c
Date: Fri, 07 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786060833
