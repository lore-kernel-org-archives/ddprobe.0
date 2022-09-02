Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5BC186F
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ACA1C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662132653;
	bh=lK0mbAJ93BZ2XZ4pxtPhxZJdDlhlkvM/us+4bGDIDZ4=;
	h=To:Subject:From:Date:From;
	b=XN8HpL2qnRY8rQXsIpN7kVhy46KUZgDApIx0azDu6NMA09lF3IpeWgBuZThk3yQOf
	 x/21I+CzT53DqaZZ5vldFGIaRffmRFpdsCJIl+/gk3CBB3xQb8uVkzeI9QpKyONNbJ
	 2ORuZ8fPJKTemNMwmCsk/HyUZHf3GoBCRaDPmTGaalmLwHhbk4UGlqQndhRVvcsmhy
	 rMMHT2CMo8rQqCrdNDxg1St8xVql9C2FkzRwmBCMg+ErysGytgukb9EiT9LOHyUcGX
	 nnliw0n3IVvobEbCY22zJK6VB47tPPTWSNVke7T9hNG7GbTspO2nYFhasJwI7PiY40
	 LExY+LXW92Bww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D13C001B5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213265332.13891.589312231198498327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73bc99be6bb7925adf231ef50869b0803440a1c4614fd59be66a2826890ebe4e
Date: Fri, 02 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662132653
