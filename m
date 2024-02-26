Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA30C8C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708928897; cv=none; b=igygM6Y8CYD5MceUIZOKGBgZUlbqA9eaGqylfJ9o2oNHi2sUWCuHu20/K9qZzoTVM2hGVEvAYiXS7Ye3DLX84eFuL6r/fze25+DxIn6gOtVGzpKXYJPeAp1KqKAjfidonvQkBrbQ7rtOPhqCxIo+P6yh9OBJrufwpa4oQpwAjyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708928897; c=relaxed/simple;
	bh=hJqLY/HEo+6zwFpBMvTePIbfJQ9NSdJvC/+k0sUx+1A=;
	h=To:Subject:From:Message-Id:Date; b=pek+r0ubSHJ1FyJ08H6w6wdTCuFVOYREJkkhfkserrZfFb13UmlEK3YAp3Hub9owlF8r5vx4pq37MGlTMqBpBhcmL7BFT9e8Vs82yIHaFYCnMdLT0bfno/VDuANImmiFAo3orD57QEOykK1hs49ZwKA3aHEGCPe+GJY4cWyaD04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3JXpQAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3JXpQAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE6CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708928896;
	bh=hJqLY/HEo+6zwFpBMvTePIbfJQ9NSdJvC/+k0sUx+1A=;
	h=To:Subject:From:Date:From;
	b=d3JXpQAyiXji1YXvoJ5PXXEiDZaNMYJVieqGGW4foYTvzyt+bsGaqIb3Wy+Lrgyb4
	 +BCPnllAGTrUJ7x8BsVtQZMp0fPAzlK5p94Esgi/E+SglDNxWC8Y0gO8yApokVkVzX
	 uKVO3kBs4vYXWZBiXV5ROUXa9ANexzo59XTg7XLy9Htls5fBW71Qtq3/lvAkyRe3eD
	 tkjX0jIyXp1/BykKvlX/y/NQIItr8hj6W+U1o0CW1gKbxJ0hNbT5WYvDxYJ6IUPOeR
	 Cwx5N1brNXqQ6waU7Ugg5XkXnJclKnrXsXx8tDLih9Gw7jTM4+7brHwWocg3/1gpf1
	 J4IzBkHb0xlWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFFCC5478C
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170892889638.1586.17850154446504281774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87d95062a31457e75f2204eb486622635f432266f313524eb3f09215d5f7063
Date: Mon, 26 Feb 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708928896
