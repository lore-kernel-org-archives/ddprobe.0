Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7117E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D19DC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670556687;
	bh=1kEZ/fCqibsrjJ7sZ45MHD1w3UcEJTdznkrwEOBIVSI=;
	h=To:Subject:From:Date:From;
	b=X8OObGmIr3apBOGo5k2biWFQYsfJuFGM8HU1eBcDo6c103DpgBO7Mecj8VD5mr0ff
	 t2aFU+cj1XoJyXjc5ZA8cXtUzYwJsjOchAvMTYM2/HE9aLPxbRWg/WjIeDfi2b0e4T
	 QUelVCH/kaLi8Eckv7Jbb4ig9qa4BTKZwn/XkIRdosBCmo5yxZssnJUnLZeeFdC7jp
	 ZzPyNTLqoQ1zDPB+itsZ4SuRkRxshfX/OAHnEadUo3ncvJaL9nDR3pQ2sYdbh4M4wF
	 i/ryKNTVFpa2pMOerd0QKC0LzyBfoLt8KHLvdQuJ7NO3mmAX/EBl/GRpyk8KvbNYFX
	 3knRNgmhAVp1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74C37C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055668743.30536.6761035817333485565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f20748d82278e1054f04006f98bdacd9620337a89f494f5321ff74869b11bca
Date: Fri, 09 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670556687
