Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E54E625
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACHB+OP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A62C433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700788096;
	bh=zoX/woKk5bMmdi9GATnYfTDgHHGYjH4cH5ZZwbJ9nuY=;
	h=To:Subject:From:Date:From;
	b=ACHB+OP10Da/ayLipJXjhosxC85HFjjWkAqdnItjZIJsVcWaiwAdEPWx2ydw3VvFJ
	 0B6DTGWWL+CFrOqGMcmJV7/1+b2a3FA4IdfzJJ7w9l5KMoaJlGG3gzhxPRJwiDebQU
	 es6yXxVEXOo6M8geS+ObkL/bKpCESASWZepxVxNuJP2yo5/fmBnhiPN10DsznIIop/
	 JvXReaCtd8IbL5oI4KAzEcEgDl7tncNwIuJaIORU0LK9aWacalwzt3g3rUvBEDNWCc
	 JKNjTrPMBYmlqMSMDQrnzPx/bN4dWYdxh9n0BWiF0hD5ScgoiFgNrlA+xZninwhi/+
	 u83x/0GvWIj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6175BC61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170078809638.4361.18232470136881686156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5c46cb29b63ad39e5b17209f0fee8c55bba6ec7266da916f7858142e12341c
Date: Fri, 24 Nov 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700788096
