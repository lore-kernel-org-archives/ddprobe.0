Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C765A1376
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C6DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666839054;
	bh=k7hnSa5KrBpJjxoIGJNj3V/mhya8cf0yAyPSoCibVSo=;
	h=To:Subject:From:Date:From;
	b=oC4wgeN2zt80DeyRVDsyp+VqKsb9cR1i4gYk+KIYEb6tA7yucbhjEAZrhO2LVPrFm
	 qZZNfdj0CEFJHW9tzXxLDAulGVVYpwXESZfAjjN0sHkR7OR5A2+S4RUVrGw9RAoWh5
	 jYIrzXzhiR6vWsKdoDeOAGSLO+tNbIWoqnaTwJrE6BHuZr7ipv3B1ErPcGSIhPjbhR
	 TkH9U/Y4Y/4YlQBJeOUB+XbeShGOgLYN4UNy3Wg4Ht7D007Qfhvxt786LoWz2oNS6p
	 0OMbaOtXZxtnRPvIR8JDc8AUvn8nMGkKvuwrBp1fiLyImdD80zk2ltA5YYh0/7htFZ
	 AaCARj7PGIUEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E8ABC433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683905431.8231.9919098129062964801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292abe45dead3c918833ca0d1eb5e86a46d3dffe7e01295fc8c68b0a541ec90f
Date: Thu, 27 Oct 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666839054
