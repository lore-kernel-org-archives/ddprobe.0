Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD0D7E6
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 02:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE99C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 02:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690943528;
	bh=XnlYoQi4we9WdOLOUN/TRWJwFTZZ30r/hQq3XY2wCmY=;
	h=To:Subject:From:Date:From;
	b=jAfwCU3ilj380S9wR7riWn5P7Uqhcno7kTYtcWRqM1v01bXt8NRsVBQtFIRAVQh3L
	 51IFgidXp1gRoFAMCv7lh1bKSLwGQhoRhKT2H4/e5fsAxY4qquEmIj5amN4L0mtIyr
	 0d2BZBONMY0q3puH3dzcTo4Mpfn853sOdvTKIU0daTACnENd0JOZuF6SIc72jURlUh
	 van8rfgrV2xWJLWyq8REH/Ibi30HFNUZTEiimlSCX6JWYUSXc4a36yfRx2ytNwx/dN
	 Sntk5VVMFJaocjykGORgQsg6kltIqkY/ThxiTib9BsXNeNGzgRwi3bKrUgNgO0lSbK
	 F9evffMQRCQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE2FEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 02:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169094352874.17532.2362066665692454780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b319dc97cdcb9568808aab7a441d107c727e0a698f4550c1347038250908d3
Date: Wed, 02 Aug 2023 02:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690943528
