Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1087728E3
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk8C05jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C3EEC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702229896;
	bh=MZWJd7jiIKyX/QuXNqSGWdvq8556sWiYk5TWAWg5Ixg=;
	h=To:Subject:From:Date:From;
	b=nk8C05jj4dtxN9eRnZpRI0HrL6nh+fq91NHNbmIZ7J6DgpxgEmdE23YJPCD0oZ1jI
	 fKrT1TfnEL2K6Vw39RIs/pQApX/FcU7l/Xw1DU2tYGfrqPucCvJq7hyIVHdU7cDPT7
	 h9VW+9TCoO2TDCHuPpxH9a7oPa2IXeFa7WgbieSMff8tUKhWo7ptP+PS8LTTABLOrK
	 WLLcvpT9BA6/eIAdMZVIl2YCTCFBNhpds2rym47JQlSXGN+sJaMmwCBH+8BbjHNUUy
	 51ti7i1waXnd2jjL7H+dz5CcZzkCW3mEuUKRChMqmZ+l2SBuajWCGkQw4Oigpx9YPU
	 RUs4bKUpr7QiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71067C10F05
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170222989645.18825.6084868457483754589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d0548ac4b2fd1bb1bd3e7e01fc6bdd06bfe0de5e432c6d7b6c32ec424069c2
Date: Sun, 10 Dec 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702229896
