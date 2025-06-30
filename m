Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9738283153
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751284793; cv=none; b=uUVFhFbWyAiWzqpaiMT4UmSibR4kOHkWQyBetTN5HJa4HgkVJPuaR1GFJ8ky0aSVj0QPnzTGGCFTVrTwdRCkNycuUs5xZhHxghs60ijR/SJSwFuME3NrBVcm4QLG9QpSuT/Vpd8jxzY2DbjwhhvfwGeD3SBW5VoA4qLisIefIF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751284793; c=relaxed/simple;
	bh=WnpZWS8M0h6INWYe0k+v3D4hlhNcXoEpWxrKc+VRJ3s=;
	h=To:Subject:From:Message-Id:Date; b=cyaJYh4KcQBdYsBgONyMf/5n/UxawzjJdfyUlQt2QXjAUCXhcOMrJ9RAcmCI3DWZO0IdUNTwVxDrfSPo1+tI07OeqxLtmxD86K8N6ZR2X1GLYnS68SdZsrVxev8F66DRye+WOa67foOk8wzGKF2+Yo9NcO4QAXqNdeuDbVnqJmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLCuE+v9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLCuE+v9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C5C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751284793;
	bh=WnpZWS8M0h6INWYe0k+v3D4hlhNcXoEpWxrKc+VRJ3s=;
	h=To:Subject:From:Date:From;
	b=aLCuE+v9TzonRXUPRM7Os58IjwUhGJmJrp8TdUGk/gSJ/PeGgn/tHHHDUSRrReG+1
	 /Jx92L/XFJoVv7IY4TRdCT72t0POEzTsiFzMtENvuCXcqJ6Y097cOG11NfU1sSk8rm
	 vhhzBrr5E5L5CKYULaPuMM4zr/Tj9sd/Z/F2QxIev0piZv47+cB9iB4wq1xH9VfK/1
	 egAZa8KmNQ1fyAizhvQbm6KLYLHU6MlLqduM21TfPOXC5Qy8EN8sW5yD0iyOslqK6w
	 O14Ru14jPG6GJxDwiZTCs77HYxhijhxqHYVxWyEOR3fbPiNiU0fRuKZzprb2wUCAcb
	 jpVI0skwMCf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE9C8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128479358.24435.7626239231824717267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e250bb2049ef6bd1850d14c8e57ef14959047688a605f98bbcec096957832263
Date: Mon, 30 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751284793
