Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F7925C81B
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746454794; cv=none; b=Ebre/fXL/Aqyn7qutKFqutWmrlKVi6h3Xcv79lXKLeZIhgu+Wp3TzcUaIkNI2UPnIMpm8Eot9D7NQ2vSLBZzficgnofikrqRG71sns7q5O8aUZ9crDSAn+pynIpNBpvxu15S6s6OA01mYD8eQNzKqflhA6VRn/fkGNQGB2mSy0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746454794; c=relaxed/simple;
	bh=n+Ci4QXObDHiXQtAKBfrNp4SvdXcn0gUg3yDstNzYJw=;
	h=To:Subject:From:Message-Id:Date; b=Pj21RJOJaFZ1hndYtwtvc0lAahG9BKlOg8S6c+pg6XkNUWE7aJET4aaNs4Bh8/93OD9aANNS6vWrJiSF9JiONjS+2/OViSsYfnf2aMT40mp6d5YDZE2t8usarSdZKNeGFAl6glHYPSJO42Yeo5/Vel/qljJm3DOZQq3CkxVEQXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlRpjtoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlRpjtoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0313C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746454793;
	bh=n+Ci4QXObDHiXQtAKBfrNp4SvdXcn0gUg3yDstNzYJw=;
	h=To:Subject:From:Date:From;
	b=tlRpjtooHYpStN3N06x8m/ky8vZ9uf7XBpr4CcXpdN/D/oFDlNlnOf5EQtocv+jMy
	 36mQixPZKqLzy9OC+kF8DYO9oBMj3ZbOVOC+r5MdgqxIuDmF8+bsCdJ9Ts0BskkIHl
	 75UWvT7/Kh2ayCqcmqZ/30GiN6gnVahZ0+/08RwA9qHhvvMTB4Ug9nbgVQmTAI0KLd
	 95MuV9pMaU7gsJmHKTby9lQ5G051QIsCYy6rNLABQYen7KGx6shro0WDDJqPA2WaxL
	 L55nwMg1dCNrQLfOiT2q+1qW+CYzbeZQ3pM+4GsqpZAXPccZkBdZH1ZmqUXS6qxv1d
	 A1B0dVfcGHe0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94CC3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645479357.27958.1576104221826189179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3189299ef756bd729bdd94a72188f0a34dca8fd19a6899d79735550858be6f65
Date: Mon, 05 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746454793
