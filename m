Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238C51F4CBE
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754350794; cv=none; b=sTzb9bsjOWvcNAOI/j+/JIuV23oGkGKmTypLFFKIq1ae2iJIPrv5ueTVdtB/wcakdJ2p40cWfi4tQdIiw+2/CkeSnVTakHtyddhfO48OQ6g0iLJlwRUDgtyv2a497aOgnVMLnm2Yv3BBE+zzhe9R3ZN7y+huHlFVflMRaXFVdBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754350794; c=relaxed/simple;
	bh=Bv5VooCnJhURz3RWyB7EjB/jQC3DW4dLtsjBNEZr31A=;
	h=To:Subject:From:Message-Id:Date; b=UoF/XxJbK+IXxzaYJZkxysPH5okeCC+L+I/2USQPK2PfRyUvOywHmzHYFndy+uusx4adyQ1+ZxKxYnmHsOYSD3LWJaLJOeRZheoyTVty76sCeGOBLsAz4dhsAg3/2pBsfYx5m4SfHLm4i10wxBa+2bdrDTfM2s5t0azAJJx0mFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggyyGFW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggyyGFW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2088C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754350793;
	bh=Bv5VooCnJhURz3RWyB7EjB/jQC3DW4dLtsjBNEZr31A=;
	h=To:Subject:From:Date:From;
	b=ggyyGFW5Uu2BBXd6JVaBkFBjsrpXmyjzCsSEL1/vN8xV8sK2RQ1P6GGkMmWb8qbbJ
	 mk+33u0CY0azRHueLRK0zqf6F3Q6340ieCEqdySQJHsCVwrINJ70wAu9IpRrTEQs3e
	 z26uv5B8XNuuBb/nc5+Gop7hdi3lX8eTCP9xLyEXCtyGUhy6d7UH0+TSJmS62xBTVm
	 kXyffSKoyIQzSzFXvL0j+hS+Bs13xHHiKUvl9BujiuJa9rPcEIaAsQ2vcCmn8izL0f
	 eMr5Yfmax0uZFapjHAq3zt/+n7zLiZQf3pPnL1q3hwH3QgsZIyE1qY6BPKtR8lV0t2
	 s/EzgrrqiCc1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F001C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435079357.8199.7910566075795287306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63be7b00e67abd2108aec693a4dfdd7b45241df0f602b71a3bedaae756c6527b
Date: Mon, 04 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754350793
