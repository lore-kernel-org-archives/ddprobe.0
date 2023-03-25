Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3545238B
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 14:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86BCC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 14:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679754725;
	bh=hYDdI7+9mMLKheLIeRpCD1OJtBStbFZ9wy3/ofmlLOs=;
	h=To:Subject:From:Date:From;
	b=c/u3rt2gE8ajMgubmsYYg3Yswzh6StXt+UIPk6SvO+i6BLz5EfcRlowdOhidaw5a1
	 pZu9HLrNpaaqwQL7f9Y54OybPmSviT5K4y5zuvL70uwX5+Mgdv0oOsyY+lGdF/m5Ih
	 2pSm9QdDFdVopz+Bsg0ZJNNpoljV6GP4F3pVCPi296sG4GDE7b4UwM2flW1X73/z7n
	 3m/9/22GUvwVMKCg8/TJlPnPIuXmN90EMiZ8uEqox+3zlzDMe3lFsJXlSnVOF3lOCj
	 O84A7PupID3kWMFjxIU1Q/NDULsbYrJ0cwdYSODRukO9r4YNa3MoAyU/BoUJsdoJ0f
	 Rh0dU71BkrU0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8CEC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 14:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167975472576.5736.18375575718018328580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57714bff775b3aa314e6043e5adc58c537c97441f1919d4f092f5aaa2499bdac
Date: Sat, 25 Mar 2023 14:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679754725
