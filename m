Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC74C33D5
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D6FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670869287;
	bh=far552tl7/KIDYjAqUtJkKnhqxFIE/pJv5HXs1uZ4ds=;
	h=To:Subject:From:Date:From;
	b=AW5ENt6gXjqStjtBHN1mI7DjQEgtB+tiL69KohoLqJjpp1cLEAMa9XsgeGVlrK2Bn
	 SU5G21VNQtw0+vVyohVGXzO8/M5Sa74LFuw/W++/oC9zL1v8HPR/lRueIB7Ctwyxh+
	 0fc7dI1q+xkLeyVzAvQTY1Dv+nKKnLa3AEkZIg/kMBMigaQ3Qfz/uj1RpAky8DBy+r
	 SRgshUFtRjeUoVhkDeFEnYfJxsIQR1gUQKm8nmugKk5taup+FOoU838AqHy2svZlGl
	 3Hx/c8+8wHAh/JF1OXHE98VNM1sEaYlhXO8Zo8VbSuOjNIzaValSn4uRcXV4Oa93NN
	 Q7iJie01mV0CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627BFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086928739.2303.6756460881302486128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d78df91f9ec9c9fe2e02b4b131936d64a604f4c1cd56d5f6f14b86276e9d01
Date: Mon, 12 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670869287
