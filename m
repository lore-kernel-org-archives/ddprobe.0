Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0817330649
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774577693; cv=none; b=ZT0E5CdydKM6iu1L3oayGi1o4NmNJLDKN+6hrCuEnPyZzHC33kVFXtehrO8a7hBnvrPiGPBDtmcW9qqWoRtAmroa5OSluC3GkU534v2xSqCx4iO8qJwDsNEBnNi/2HItkL85zLPH6To/TzI9NW/JigIjOQWae/JP3mwe1ZlV4oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774577693; c=relaxed/simple;
	bh=Ll3vMNKncBfSLth8Sti1FC4mHUfPIaMoC2vK2W4OR/c=;
	h=To:Subject:From:Message-Id:Date; b=fW8QEgFJ3XuCqVgO277YEHjdL6mq4vQy+uwkvieGq/0TqTEoZlob6yLk9mY/OfDwQMVTAt3ULzg/FUjeygvYN6zLXJNAr5ilyUGnYa7r2LS0xCIWYLutwqk7S+nIlcPjBjhbwrcE3tR3biC7pGDeYjlxbrIB3HukYzaRg4R6kxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5L8646A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5L8646A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44CEC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774577693;
	bh=Ll3vMNKncBfSLth8Sti1FC4mHUfPIaMoC2vK2W4OR/c=;
	h=To:Subject:From:Date:From;
	b=t5L8646AOZGTNKYtJTFhguLCSf0gZbBY4XPtQnMlaKwjW9wltY6shgg/0JxJY57Tg
	 anAvT7YD6eZ0PRDcT/Vy/fMCYpwHv2e0+01b/fW0NXvdAQeh2YU7VDbdNGm3jLZV3X
	 dtPZpsWEuuXoG8B5ouNdiTXaRrou+fHbxFDYIuW9I8oFkSNw7I/fG5caTY9hHcTc/c
	 dzOuzrJumS/xtw0UKpsvjkKk8Xq+MiYKxmejMOiq+rVS/HMGa9cFT9GCOK8WlbdlBf
	 /FCSmzbijDVpyVwLbIgb8Nj8kgqD+2TNRABmy6/4NRS99EaMqdN+4DpnQeSfJ7BLey
	 dZxi6ApgDkFng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC5210A62D1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457769363.24628.18201441618652338420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467b1d839d30cbdfbd9f50b92a661d53e6bf5435b17cc8be1e279d606358fc8f
Date: Fri, 27 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774577693
