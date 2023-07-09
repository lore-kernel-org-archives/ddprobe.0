Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E522EBE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C722DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688885828;
	bh=lcmEXZ1ZeK10JT+LcIxGSAp2mYk1Z+QQ9ivPNl4xeWE=;
	h=To:Subject:From:Date:From;
	b=mu0uXZ2Pg6QFPQiNaSyIP66wrwl+2utuoSFKaljBYjome6gOl4wxH5dJmEvAzzd+f
	 zlahHosw7OYfsDs6Depsgt1pcpQ+bqtQneJEb2HTWLTIRC2uuRXYtW+LCLnl3hKk1Q
	 nfkffUabU00k6EBOlW/FkncqvWb/BtgdywuweTlJv/eWZr4/ZEsDysFKTnS5x1X84q
	 cgpJeMLNe961aymQINhcl0385l6Ycjo0KHZcKG1lRGizakmgPjRUAC0sogWhulFhlq
	 7EAXjQYzh0AQzvHkDsMlXSBe5rUelBDzecRaha8fbC7z1rK5jf6Ybuxi92sae36YWY
	 Y13g3Bqet/psg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F47EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888582868.29735.9918040882513403614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614f92af197ea0f307d7acef01be00568d61e664df6508a97155d3bb77c5d246
Date: Sun, 09 Jul 2023 06:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688885828
