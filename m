Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871971F93D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7303C433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685979005;
	bh=428YYTUwq+BAiyQgCDwkMJYf31GA2gFmMIY6SrbUv/g=;
	h=To:Subject:From:Date:From;
	b=k1DiVQ80SPvH/xIheg+/zqQdRQOZsLg/jSpfGnL++3pPto7DoeRHeeLwYtVFc3GNH
	 JbnxhEJJg7Kb4EvmUk8YwcVrs5pB34YNgFPRb3hNP4CHmgd7WiNYvURTfXet9m3NBY
	 rAcM6LHezLNwg6j7gHmJ0SLQFKzNQMTjsnrEFLdjL+L9PjADCObFcASOy4MNXDPy8G
	 k4zjokLfmXe/84qKpuRf4JGCOTDQIR/T1aF4V2etcfN3Z70k43d2GpI9O/2UlYzwPc
	 3KPuh3WSbMkZ+5OziVqcvVn27ih6NvlZYud3uGtR/NGayhLOg968JggDuaIklBdK6O
	 fHUyH/E808HbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AD3C77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 15:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168597900580.31785.8903471451419897489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d2c3eaa04a95e0ae81153620041d69378cc0b16f23761b4d1e4bc36006d2ad
Date: Mon, 05 Jun 2023 15:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685979005
