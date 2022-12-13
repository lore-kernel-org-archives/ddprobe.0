Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7DB23A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D015C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670914887;
	bh=58chvV0IvBrOYT3K0nv6TuHyd+LcdG1Msr6nguTSMUo=;
	h=To:Subject:From:Date:From;
	b=Y/OFYVJtD8LzZ266vQhhBXAhlAaYUAB88xE2WVyKhghk17kGVrt0vs6SzI1LVd3i7
	 dXS75jye1ujp7QkxImmvgb3GNHNnrSWvpR7KVnzgp3GAV7wCpvHQOAAgZM/4LS52jY
	 NPCN9rdZwcNNtqOI6CZlunh+lWPsfOQx43icLLIZmwK6Qh117HnA8ulATz3WtKmYYN
	 +mGD0djrZ3TRpewLP3HUv5yg8lByTQRqprl09OmWImARzM9zShpZLuj8uRqK/Uo2CW
	 daLQEsX3OsNcyClBild07p87gkASSnqWdKx/RzuOIKtNkg9PylPl3h/2es2N7tvs7i
	 ryjM52fSIEUGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D32C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091488738.17249.1881773910718886507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf2b241bff5de8dd7851177d9a7db64e94f0195ca6e2dd314499b91ba639168
Date: Tue, 13 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670914887
