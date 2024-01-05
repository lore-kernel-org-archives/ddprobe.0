Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CA13455D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMOxItdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ACDEC433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704478096;
	bh=tLlK32CeJXeRQcqAxVntuIFvY3RM9HGiiVv//Xfp92o=;
	h=To:Subject:From:Date:From;
	b=AMOxItdosj9xIL9xVlh/0DE6kcYfgpLaJt6ZJHpfKh2n/ZcmGvHQWql1tUZit9Grk
	 h7ZsubenmcljcrekgK5ubVPFZ1xXISFDpIT1mibA5sMnXWGwcRwYsQT5QKuEjzoq9i
	 lUOjKBdKW9i/+m38LVv783YsLxoCvCDTxea2PVxo6VYnzhgP2cGEjven1fAwcIuapV
	 zcnW1dQTkICB2+Cgq30zKIA3s8pF7Avg0JczIMoI1rt4b09QGN7HLJ/sn3Aw3vY13A
	 xsFD+F3e/ohK7+4LZioxuyTINm1ZJkaZUxPgNotr9GIiwsegCVftao2XbGrxZZNPT6
	 l/8X8fF0pD2eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669F5C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170447809641.19270.9337257520291823606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355011470b7ee796fa79c0c1ecf622f8637ba45d964b5deb533c8929ca2eddba
Date: Fri, 05 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704478096
