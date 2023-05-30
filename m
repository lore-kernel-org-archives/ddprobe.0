Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8BE17AD4
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60A8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685460185;
	bh=Ux6OU99UjFrWD+sTnK+iOeqLER1ewMMU56eesjT3DvY=;
	h=To:Subject:From:Date:From;
	b=T8f0JYXPexGW/s9eoP6apWqobaHf6+3oxkjkOzIUtidBgKjypbwa46yF9tpRCMCJd
	 jURsJshS9DTFwKXgNfem++CDZ1EResve3H+iXF7Aocib+UuOOgsURLrqvkfuHnv54v
	 oIvLrj72Op/5GQm16DSdCDK9XOsUjJqATiLSdxEvCXW47YQjuGXbyOcXHnMLHPY+Vt
	 bp/F23AXMDI/MMUJ9fwbbiBctus4FUwAXhVTPyTvHaoPlMRVDt3aqzB6GHQ1zcBxoW
	 rcvxoj4+/qMRRXDkLI1E4aPZhxh8E6z8W+G3I7l3Oc5H8F5th8mvYf2BEkIIObt/nt
	 tbMkfgY5Y2yiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDEAC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168546018576.6986.4010826019449644425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa5e12fbfa70133cd9f143d37a2201bb57a8ac32b23831239fa1181d1df803c
Date: Tue, 30 May 2023 15:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685460185
