Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF64227BA4
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769642034; cv=none; b=WbE3NRAvabz0K5gziz29m3HAAO4SRnAbEXlDsg3KQoxe4FmPF8u1mnxDboaaS6fPKX5TNVxVH/958DCWdNajO1NTM3HFVb8IGMogf0Na+tYxWAT6gn7YWTWtf9b4lwaGOtqaotFDuEZQi7VRKDRo5Tz0nGxJQh/jYw/FMh5UmR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769642034; c=relaxed/simple;
	bh=GEtETJUp5FhyJNq2vix1Tg4brV/qoShiVzBrGH+Tgg4=;
	h=To:Subject:From:Message-Id:Date; b=Br6zJWZN3X7d8+2zbD4kTVSs5IDDscofVTCk1SRoUlXsQJ9Zp7DYGl6thTeEpLTzyAJCACKaAGLMys1hrqfR1eQ8spumS6msVGvu4MNM4cK2eiMd/hK8ANSLRRsbTbsCGa9Zt4YP0S+Zh0tqykdPL6H96CAlwElRi3pBEhpqNgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+23QyKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+23QyKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69DFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769642033;
	bh=GEtETJUp5FhyJNq2vix1Tg4brV/qoShiVzBrGH+Tgg4=;
	h=To:Subject:From:Date:From;
	b=A+23QyKKtAlGiPnYTpuxzKPZ+vQB7ol1G5vURQ8sm1oSnI63aRQ3n8i74Ls1EYAbK
	 OdnoDcD9Wl2WCZXR7fdDVgpJzHBGskuOmfbnBc/4PfEHEUhRhX5hvFPuV1CnzUxm1k
	 yZ1uQkAepQ/SN+N7eN1mBuheOajFN+ePgdk/gu7+5RH6RWho8PF2ZkO+oC51P9RNWz
	 DLaedbtR0b1cJMdpMIEhNMbDq88B+t08nqQ3oa8ZS4YUyiYVNzvVo5aL8pJbjXeCqp
	 b/9gg42KIzVWtvbt5wem7ue4qJFA7SGA8Rx8+3MF9aNhRSX/CD+dylqiweaV7rF3h6
	 IllJJ/bBpoT+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B4D46C01
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964203357.2121.7796754615155865587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab38428e3aec0e2f692fe27a6bb703dfb564449565c7e5df6320db728d21b25f
Date: Wed, 28 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769642033
