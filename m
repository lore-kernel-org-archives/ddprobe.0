Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74B07B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783EFC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664852453;
	bh=iF1OnthwHCHAHWXAHiB41FitD2mdRsVd9g0vANzqQrs=;
	h=To:Subject:From:Date:From;
	b=plXEbXaRMA3PLRzze+W2bjoOrSlHykkT3D3d6soWvz2NTkG6Xgnmnb20UQ1Qf7Rke
	 oznnTefX338rtTxuElMBwQAMVCsplUp6H+vmc+lgEW6Puh6npL2k7xG+2ZHQFrnOk2
	 7yULYntDUw0bMZZJ39CsYaHSklIOxBoO4eztQagKqbIZTFXz3Mq5hH6fjiBrLKyTwk
	 Nx9vJAevvac5cI8FVGTKINMppv1R4mlAq6TyffnZ+DNWgKXyYmCvEMzqwo5M+14lFC
	 fdYJxDXX83XEhyoXdHpt6rKjwZf6kJgatVYtMLrOxTwaWOoocCUSnGtBC8z5/ljxVC
	 jwxuxM+/phmHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 578F1C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166485245333.19801.1552974622782116413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80aed9476714a2e830ba2782c473ee77d333d12c3b9633eed699f662537b03b0
Date: Tue, 04 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664852453
