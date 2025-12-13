Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066B61DED63
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765642374; cv=none; b=sunlLNZh5pFY54FXGiTawjjDgrACDdzfN+7c3pKw4+Qxv+ikUBK2dWA/fB224mJw5cKknq1xvGi1pDG1BVxngEBTxLe4Z1S49buxu37u6SZuPeaJUsUA/dHGUyNS4lLO+tOlmlk+lt7wqgV0TfMl0RcOGahTU5+FrGv1gpPmICY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765642374; c=relaxed/simple;
	bh=Jqh7Zk9ok3DcMs0km4INUI7a2pLp61d1XIuCk0eTK3w=;
	h=To:Subject:From:Message-Id:Date; b=hTy5oV4+eZJmKZeuorsfXvWZEUYmCYarJcqKrhh6DDIgQOG24eGl8YW6LC8clOikPoyTO8vTbZxRobM1+oDDH4iXMc5WCQMJ70u45OsBBgqaNiO7mlhn2JRTOuwAwQRXZoyN6d6+YXU6UD7KOMBjSkkz4I7tYBU8MlIv/Su82m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzqaZAZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzqaZAZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B56C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765642373;
	bh=Jqh7Zk9ok3DcMs0km4INUI7a2pLp61d1XIuCk0eTK3w=;
	h=To:Subject:From:Date:From;
	b=WzqaZAZKpzipfytvl09RR12Jf7CQXPjx1V0SMVxLa8ZVst6tm5A+cpuyutR+InxY0
	 m65hEcBaNS+t66Gtl1cYsGZ5/u5aNZ1P8Bapg0XdgpUxZdRMIV3jquJHH0YNUhqePj
	 UXVpgNY1d3eCLmr/yNJjB4TFIaJrnN1tVArJy9b+k/cJ0nD5Fbo0kcMfiQk2iXr62w
	 J1mXRHKFUbITUOLcoGvfFaloRHLYIhKHDc+1ZXaFhT6O1UyRmRzrQRb4Bz3DdoeM9V
	 /TWN3gmWgIqeRB+120dTPrFHgGOv8J6Ca68Mrai0bWq1lMj05RxmDccKuRnumDbWFW
	 RGC/tWD5TjYMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96868D59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564237358.9623.15338370830434410720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c7030ea1d53398cdd9dcaf4b38fd144913304939c7d47a833759619e309567
Date: Sat, 13 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765642373
