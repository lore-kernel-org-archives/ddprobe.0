Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D259C2FAE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF31C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673968287;
	bh=9KJAH1Zw2AoL/byGiPzI1UGj70dgI3VUNbyGOEx2+Og=;
	h=To:Subject:From:Date:From;
	b=Ge0C53x4gEhGdMNJ5mnZEXPXPZEwcDarmfNuhrlwAU9fuAXLjvtAM9ZENArWaj/LQ
	 Hd85zmppfwRSjuT3V5t/+JBuhmCZy13zV+khecOt+2k2lQ4ErMzVzjQtKwHMe7MNi5
	 ybb3ullwyfH78tMSqaVX+fChGDuNhLGOv5RmwxZPt5bg0Z7KA9tELKKhcFrBfJR2X7
	 9RNoafw6fR+s8csBNusTtRje3H3RBkHlRc5g/q3T/BnNykQgjMO5YXDiLAsRZb2hM8
	 rY1PsuuxzkKNQpW9dvSPEhHiBUaBUBJG+AZT+oECR9yAtaff6zNrE2hOOtCdpC5TGi
	 FzoPCOUc67LIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62730C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167396828739.20678.17035130000273055526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9296657ef8b015336404d6c8749db426e97e440f9459061bfac7a7200191adac
Date: Tue, 17 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673968287
