Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAF617C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 03:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E24C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 03:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677986825;
	bh=V1FTiJ1/dBv6OmjiC5vbIdApUAr0DwXQ+5R/mETq9cQ=;
	h=To:Subject:From:Date:From;
	b=hBMrjNdtCXuzBiPczuQyOfoBIb1SQfdzN3pklAjHoqKl+NTO/UlDj7syzquYJQSTf
	 r31t6u4+YZzH4nrZKXkIV2f3z63Q8inu6wfpIrIiayk7YLgF0HchYOWBgfxYviRMw0
	 yDlMQ8pzLJm9f/EACTHn9PAJUTHJjaH0tkXEPHk0V2gUheLLI9N2Kt32J61d6ijc72
	 wu+8uuXFbvlzxmzD2n9S08aDWuT6FDaiIU6EIthajMwfCuMfhXTOD3ayWCHbDrSBfd
	 l3Li08TXs3p9clLTazj0eKR0OMhqhNMdvSjVpKK4iqjJeE21HGuhzerlzPW8/mehB5
	 xcnG9s1llvnBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9A0C678DB
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 03:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167798682574.28301.9601839532198734908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684c45faf8d9cffb69e3c8549894c7f3b9b7ed1702009e61c54223455b96bee1
Date: Sun, 05 Mar 2023 03:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677986825
