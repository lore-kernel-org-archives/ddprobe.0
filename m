Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D807E3
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 879D5C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672106487;
	bh=9plcrJcM6REr1Y0PLGAPPLGUzztbFrFmeAl51f3VazY=;
	h=To:Subject:From:Date:From;
	b=NXmYQGIyupq8K3RSJUuPrTFCdx79vlWxxGHVf3+z4UEwRV4phKEZkUJ5065AjAe76
	 kVcjGGWiU2QHVcAY2mBEiiDeMzxoRAlxwOx0sBvDM2sQl8qlPikB/7y5YJ2wXjeuoj
	 jlV1gsknfH9wtlD3e4IIZN33Xkp0Vpu7CyJ7lfWiEYB+s8FLsvPc5EhNHk1xfkwiDb
	 NOpNNQjRd1qm6F24525QI6y9V7JQnom/+CCZAhHkATDG4sv6gvCdk8XQT6kD/sgxyW
	 rJlog+8+BMVP2Tpj2mZycBb3ATpY6NapZdDz5/Ttj94JOFTRUeQG39Ix9lMWwbYA0V
	 Tqi3gR9DtK8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BC04C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210648741.14482.11122926484004928418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af64c5d4cf3687dd92f5bc541dd03563a5e9e3adff792faeb3bedbaa0f7ee355
Date: Tue, 27 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672106487
