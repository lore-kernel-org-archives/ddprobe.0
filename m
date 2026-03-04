Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E9436DA10
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772608494; cv=none; b=Zon2F5rEnHcU18k2i+pjF8SUy5G4V9x3c7WZzVPENLKZCeuUYBwkGp7ZWvcj9VUbZ03keCatgFLxyHVz1R3iUukE8abazvhph1a1CDzu032DnNNYHXsL70Zyt6oyfLirdlorJlBGIkwaVv3PFCcItPpMdHDTdjomOrpN7pOC1Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772608494; c=relaxed/simple;
	bh=o2x9jyxg8RcyiXX4L7yqpAGDI5EqEZ8iSG6v4Kfe4eA=;
	h=To:Subject:From:Message-Id:Date; b=gTqyKijYwnxIP279tmqQY6woQocL7eLuNLyD7MdHywWWnIdYQn/ufQgC4QniNfYhl9Jm04qWRmxS0YPT9oPuDWZbWFY4zMn7bfSDT9YxF/AC6chRMeQeu5BHSIEL8iKWl+ct33gAT71u+cGhvNOFAGRSBX8Rz+NHC/0/yihPuhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIy2tA/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIy2tA/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B1EC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772608493;
	bh=o2x9jyxg8RcyiXX4L7yqpAGDI5EqEZ8iSG6v4Kfe4eA=;
	h=To:Subject:From:Date:From;
	b=nIy2tA/3DGv+O8ehMOmGYNYPtB7N6X+7BOXAvOOYmcxQhJ9FFvsJ+WLfCi28NSqWz
	 EvO6gSz3IC61GDzGcpiGmlqFZ/ckQD6Zeqx59jyncqJ7EqCQS8jIboMu9JhI2Mld8M
	 X4eDljxo4HU1t6R6Scc83AzplM0akwUj7wOxVpSLPBDwtaZ0wbQkBGfWueP78SCygK
	 8NsAdVVkux/+v4Su6VSTy3eCvk9K4gc+f2pnC1dl30LXNCK0JfPbHVw4sr79VT/96P
	 zDVhdM/aTdGqdk4suxZoWe/jgTrEFj6CQ5x652lmWGA+5S+tkvHucM6M0kLkRAFhGE
	 3qqhADo4y9NkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F93CEDEC1D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260849364.17474.17860337681336015115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d178ef666a8592e920d65a7e8f401284e102a154b3e6700b0663877518192433
Date: Wed, 04 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772608493
