Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF7D256F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 868F0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672317687;
	bh=2+cv8cYeRJ+abPh8ws/M54obM7w+OYl6AIrtndjaFHU=;
	h=To:Subject:From:Date:From;
	b=QZb1Mm+M9TScAs63KxhrPlIJiQMLiw5J1ltFEzn3zlYwZ9qoXTJvNSVMhqk2EqvA5
	 yZog7k8OG1yZikCfkc6G0bqMsjaILX2EdROmu8xAdpYnr1UwGM3RuMQqbN1LJUotzn
	 ocna8r0e2wrk7qKEyV/k9pITOTO2kTlSCHTxhAv2J4G5ye77Y7wDKe/dxB3H6jr3ql
	 DQnjT5zrqzJ25f5REIfJ4OGzIZZWz4TquMyGxIdY6oixFeC0gvWmKGbz28hiaheXRK
	 uP4fP6eqkyJdqZNcbpktNp8h9I/arrB3hxo9KQ18SB77VG2WYm6j5L0Az7Dv/A2goy
	 7eU5O1rjT5ymQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B54C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167231768741.11235.13500628931931419862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f928477c46c4a324df4d57da1807cdb731638cb1e1c1b274616ec87b22c8b5c2
Date: Thu, 29 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672317687
