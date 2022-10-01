Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D135C1FD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B2BC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664599853;
	bh=qjilLDYMArRntgzhotaaYtkSfaLvT7ONAc2cRG4T5N4=;
	h=To:Subject:From:Date:From;
	b=KF74Tdy2yMFESfj1/2moiQqq61taViPNMomSVr68nt4JOlx5KOG15rnGwvNGdtjAo
	 isHtSoBaiuFJfYIeW+A642wnVh2tBuu3URWxvk59snZWqGW7tuNeegn2AG7q4Wt4f3
	 IU89MIyRkllWujSitjBeCMHhuq7sVNcQCH/RDmBurJj4EeLFH2V/lkBruhYwFuD3zG
	 m/+WUAUrCBR9z37oNymexuytxSEM76Z3kLSFQvik05j1LTCKxSFCunZhCyqIjqT8/1
	 3Fh05+0wZsZDYKhDXtCmC76e5Weqza0r39/QgV7xM4rc05VXES0iQZlSCUwj1EJD5b
	 NXk+QLykEDCIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5018BC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459985332.11198.6441468419832458582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a8bc11b98a19d02e007d8999e162e6ff63ceb2dbd776e2be2417ace73d48ae
Date: Sat, 01 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664599853
