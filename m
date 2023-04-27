Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D766A20
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 05:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69ECC433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 05:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682573465;
	bh=4z7VjmCjCPTz17Q/JZFgiqR85eTiN8nN1vuAnPz2rec=;
	h=To:Subject:From:Date:From;
	b=GfF8hk1OZUQq5DNLYxRGmyx6j6qEKSdDlwkj/QxG++Ltmyd6ORGRt58U4xchRHsr9
	 FgiFRk3QJQUBlhdB/U+sWVOQnmRkgqlurHuekYUtOV3i+14SnqIHBDJHhE3GF7sLBf
	 zYwq8tNXYt/vpTDOcgAszEMD/aipdgfDPG2udSzxi5r/FLaDWzPTBv+CkaVTWnNKBz
	 54XNr156CAUBi/4Y/AtZKYkN8MWJik2o2cS8Z3PVZWapHtmnlbTJduUPwL30R054Ci
	 IjAxmx1Y+mlfN7p8grSyTAynailASWF8T/rHORzZZ0HzZItuJHxvp4JGJAHtrsabT6
	 ZoU5szH1HKmfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EDCC77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 05:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168257346575.31944.17530858316581497110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17ae707433bd475d809cca098a73cf3e68cfdf6f143d87c032734c63c44f6b1
Date: Thu, 27 Apr 2023 05:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682573465
