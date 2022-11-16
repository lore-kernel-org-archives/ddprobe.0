Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17A2D53E
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A39CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668629454;
	bh=O1NA37wYAwWt8Z7RILjOssO4TLA318KBlnX0psF718U=;
	h=To:Subject:From:Date:From;
	b=SwOQwPpHwcHpOOqfTY1X7b7CTsk3BpW5v7014KzHB5JrI5zUszG3QuLSL56D+4eaU
	 tdBAtFa0WqAVZpOSD8l/il+ly+u8Cw5bwc2BX0L05vuicFmDR4Tq3jJmTcAO75yuN+
	 H6VLDKFbzLpF6ZuUyyV5uPHrTjdVnAumDLtm0bD6I2Y582dLRx+lwvtzjox2QB20kX
	 80xNbOw2Qs+hSkFK49dHTIVEAyOmAk4zd8aa/bxdH6D7urT6qziAXOwG8s2tmxD0Ig
	 MSUAF2m5sCIf7GahBOZR8jjme2wkn6pdVhRp+OxZGY9iaWS03ThD+osjkxzlPAki2F
	 nn3j/MtnBp2zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52190C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862945432.7559.11487015537119553240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948f9a43d1f235cfcbbd60d10f81907637ce723f2dbefc72388b0e2471a4b6e8
Date: Wed, 16 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668629454
