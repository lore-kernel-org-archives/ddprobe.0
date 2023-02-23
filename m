Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468A21FD9
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 08:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37CEC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 08:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677140705;
	bh=mclpJWWfN/7kDnMK2uJ5LJs7le/HhrCsDq8T/Kkw9HE=;
	h=To:Subject:From:Date:From;
	b=MtEeZ8A/adprbVPaJggSA311R4Z3XJaS7cOssDTcetWYZAHuvKB6IQkVxGrQDYzTk
	 koSTmBuqqTgaivilb1zCUa5vuoNSMjAHtS4Ytmyw1IWO4niEaTU6Sm1SBH0u/nsYp4
	 EGUnXpQtOQCxL8IWkKJ+SkdyPmErUMfS1XkqBM97R5FvpjYzQAFGdtuWE4/rAKvsKO
	 R89YyxYWEnIXvx6zO+Sym/Tcxj/Tem8WGZVNkUno0rFLpvEP6jngqxaDwru0DWgB4C
	 bXwnsWYYrKhV6Itjm7SPB6vT2w3tIFWGE7lXNzSVcdbwNnMWbLQ5itzdy3UBuk5YDl
	 WC14gah2+Tk8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23CEC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 08:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167714070572.13665.1072827886760210360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583923eede6f5493c0dec2d9d93f5b5c79d3b130c5148bc2a03a8666cc6f4c29
Date: Thu, 23 Feb 2023 08:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677140705
