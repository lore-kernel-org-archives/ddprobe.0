Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E4C28F9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96476C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673203887;
	bh=yJVt/DEClSJwASoEzTF8ebj2nm2ckzDserYpMPVdjNY=;
	h=To:Subject:From:Date:From;
	b=DqN2NZqK4O2C9UR8cHZfxGwEdm/hcEBQq6bCtEfcG1pr3So6fOuv26pZvG4EMVR7u
	 DmK9BeAFNBLbCfAdJ8QhapG1GateNM92xk9ySnLKF9V4GTyvYB/1ajLuz88qhykK6f
	 9YQEtlnZ6IoGoO4eFn9DbW6EHilnunQPSzZwQtjNrJvq2Dw1p3or/UNHjVTSBryGYN
	 +oTw56UN6mpKYIXqVUqIRImB1yiQ1l1oXfvQW39cVvZcavAlgQ4HcNj/A/AGG2kP0d
	 7tNGSA9b9pmRgnTTUUTGzNhS/5qGvE4Uj7Ya7PMKM0GCWJZ16U6IRIaDTqOnr3WE3h
	 G49Ll1Wre5adA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767F4C54EBE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167320388747.24476.14237146585438146434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1202e76eba2c0538ec60563001c0ce27897d3dae9fe1a934a74f1f16a802392f
Date: Sun, 08 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673203887
