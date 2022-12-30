Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40914C95
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98E9AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672423887;
	bh=C26R+zzBzwRsjF2Dpe3w55Y5FA7G4FCRIA0eaUfamGA=;
	h=To:Subject:From:Date:From;
	b=FuZU1yQb+k8NOVNGpoJteWlWTuggKL+VVatjqxSz47hbLqwnDLaRznb1/MleMfLFf
	 s2PegHXmJg1vQ8AMhlm7JnAqnZyvgjVpd7/209fTtiHlRcCGezRo19iJaTvAh7RTjB
	 1vrqjyzgsqv3k0FuzNUgc5C/wBWJEovseWHahOJxb1DyCLgke+/0eEivmS6WXDh+rm
	 KD54pieKKWb9VnsHx/zmjW5Wkg/4Z9DEooI/iGE+KTmiJA6ag+3p7mOVTA/bKIh0es
	 XU/FyY2Cxn204ID0Tt7Pazvd2Bwpw6mxnuOw1LDn5ogZFMI3Vv/WN8WYktBURH9CJI
	 QWyDpYlsv4IWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 742C6C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242388745.18905.2377906721235441603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec8be70b44f34101f4eda085288004f579bbde5b0952cc68b367ad7d7ac0725
Date: Fri, 30 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672423887
