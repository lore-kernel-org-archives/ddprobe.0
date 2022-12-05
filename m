Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D225F197
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C706C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670229054;
	bh=fXa6ilhAjYwZ8oYP2xrpt1WECNRpPPKKMIRpFBk6/s0=;
	h=To:Subject:From:Date:From;
	b=hQ11JC0rXXyzDaRZ8BM2q91jzUGTYEY4QcO8FEVseNK9hskwUPMiVVQQiHYBgyNaX
	 5ggBjANr85F9hmXyVhp8ekz6O6d3gOYkkHHBiXx35Du5hYm2ytWy2p7Tbd2fu2Bg7z
	 ZabCSa5jhJD/Wbg1ljTHRJ1T89FUA+F5ulnDkna3sCpUW5IvQs9bqWDhj7o823VhLI
	 ASnJ19Xc/90o4LhOFpFccX8ZMhijmA9AmNBfmscrBTD+sOeHdjXmbVmnYD4vrxOTA0
	 HWenqA/02XNCLVV383PlgZxyvZIurPukK1rJ7NKCZKjb/mwlSX/OP5nDiycwNv0lr6
	 +zXL98KUdNahQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DABC47089
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022905434.18969.3072693231245518101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b307ba8ae9ae0e1dfbf63a0e85b3bfbdb1d240cb34e8ad60ec4999000888be
Date: Mon, 05 Dec 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670229054
