Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB19323C
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E07DC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667892054;
	bh=p67/t1Un0rzXBkC50bddum0KS0XTGK0VtB8gNEDJ/KY=;
	h=To:Subject:From:Date:From;
	b=gCsQ9x8NFybES/u9vXtJKrUBhYfb3rYLaOpsO+la0PtEvbrBO3glARSYjopNgFZwa
	 M6Fl8rJxoxR5oTQU3fI1jfEBy6qWh4uyCvfqh0Rk7TI8qzFSULVqskghhqripEe8gz
	 ZvdCAhQeW3I8nzqGzRqhlXfcnf1fm1+3iaK40kGb5xyOHJV3zTwFTmbIzcvMmMD9Lr
	 qcoCjejsd4dlrO2dLcAQrMJi7Zi4LhumBrwonTy4GMfsjeNaniQR/3lrb7h0RryCoN
	 /nT6pavOEB/1rJZtzBgulRaxbbI23l/cL7LaZsQjtYIpojXAYUS1ez05krKIlllF8b
	 YdXe87428luDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6261CC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166789205439.14983.8245872953685258185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6615b290eebc2278a22016bf11c7605607e386e0c51163ef64417341577d33
Date: Tue, 08 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667892054
