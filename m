Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2919836A379
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782786514; cv=none; b=piYnIwNXKBbhCbUpJpZLimIY4ZJzH/1idH2VswkcesEDiosS1vENAwE07+e69FFLTryuz1VnIDY0ePsRAjUmkSDhm/pIfZqGWXLkDSWKlP5TGje+9UfXNRoL0mpcHzrgcXl/00RAGdkMPcqmRrFEK1QSc8zNjy+9NRk7WX36fUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782786514; c=relaxed/simple;
	bh=ztw/KfrMxHLrEm3LO4ThmIngRN9NFXW3qt6Z1szZi4g=;
	h=To:Subject:From:Message-Id:Date; b=m5Fl3HHEzcd7VEmnMFzrEW8/1Kn4/Ea8A+cssXpcHHFeWKlY7GJkDlF1LzHCqwr4q8ojFicifOQH/+cHBJ590MzQxmbTCSw8/EKZc90D0AA20sRgkGi2e7dPJbwV/m7AmsplIQAfJhfGD31qKK2msgdQFJh25Po7uj7cbN7VdAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDKxw1sK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDKxw1sK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5213C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782786513;
	bh=ztw/KfrMxHLrEm3LO4ThmIngRN9NFXW3qt6Z1szZi4g=;
	h=To:Subject:From:Date:From;
	b=TDKxw1sKiZI3XMrbn+bc4GMNoKfNfYhEH5aKrYG7aK0FePbr7zaNfk/aUfa+Fm+IM
	 l3L4L6K2fq2pYC8O7uQLd8XKCNDwlFDtdVX22OFMG2Zyvf6X+VnOWSHxoiGejXQjdT
	 bLlPtJgc3FBXAoFVfuotdnqt1OcIdKeH6pyreP6lGTNWF3gygqQ+H6CKPGLu+ZJuhK
	 NFlCbY63itnydm3HfikSzCRmTW1MmEDL1XijWLwyvhU71IkHDS9a9DFFT6qnJgLZjM
	 zcoMMU/SwlQuiMea7J3F+OEMrf/I+QBgWLULX+HcgwmlY+6sV5p+RQ0SoDEk0xN5fV
	 zigL166Y1g5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBC3C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278651368.30786.2719816149643641970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a112bf9f3e14770b12df642406967b8c4fbfcaf222c3772bcf30949fd6278428
Date: Tue, 30 Jun 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782786513
