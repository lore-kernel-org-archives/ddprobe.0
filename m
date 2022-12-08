Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53BD7F3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D63C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670494254;
	bh=uwAEpWgT9dR69bSxc/awKIQEiN3Pc77DdwHUSmHcBaw=;
	h=To:Subject:From:Date:From;
	b=sM4zvMOoouluk575ko5WJH4ByxFzifOOqF03hx5/WSkNpDIF1m+6XDOziolDUbeRx
	 Ass+iSGixgM8JqZM8m7VUQ+JbDaqRq+ki5sqb3HF+e6IUPcVmKc+U481e7ZmSpjSF/
	 WFLn51eHmQMCdgCjFF2sXovFFqEs/63vSGUW37XB9WA+bLFGhuYS/dwqXj6FhqHRzA
	 SAYwbs9n12RnhCkOv6lX0S0X7wiqhcAfZKt239T0WrUD8WG8sypd8bn317/JKZE6QC
	 ieXuN9bmSIOPTJsNok1uQlCe6fxUXMTGRQqnyelQG+fr27t016Y0nNCjoEpnTBqT1k
	 jYRt7sMW9IA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F920C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049425438.6052.399632877659555966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef13eda2ae96729586c0eb381c1b7c096bc8a9fdc6a4a169a8ad40baf3b429c
Date: Thu, 08 Dec 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670494254
