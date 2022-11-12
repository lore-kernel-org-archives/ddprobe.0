Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DAC63DB
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738EFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668285654;
	bh=7egkJ84QrZSUd68mw64hoJ6x0cgcErVFieo/l0+T37A=;
	h=To:Subject:From:Date:From;
	b=uE2hjoJnZHkRFeb9jLh7rq4qU9Av8SpxXxGFGEDKzL+qtnNi68PBnnxj0ZtSXGIQi
	 AGA9it036SFdQwtMpXD7ORMMnHCY9cgN+dr3Ww2WhU9O45NfsrHgmCWZIEi0DZvjpY
	 BQpO0QaMkCOXc+v27TIqrqHoVYAEPbn1AX8IoRuw1pKfVCzw+wWmHhGfI4bCUt1GdK
	 k1j47r0Y8/npDBOUcaEIkIQIA3nC+aLFB1BfDXyw2+fVxsjtlBlD441DLEWkrJyyhJ
	 RvhC/bfa5XJR3d4M3wktvx6Vm89bhHcGPvFfv9pbLsrcFle46nOcrOxGT/nzz/eh08
	 FWjIzWVQ9GjPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56837C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828565432.24535.10207547927049454636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91bfaf9e7b2c841e54f41681c9242cd6662b456f9e6ca041db27303c0269a41
Date: Sat, 12 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668285654
