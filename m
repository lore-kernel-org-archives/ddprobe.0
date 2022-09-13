Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC62D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 680F8C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663057253;
	bh=WgITvjT9A3aMjbsk/9qFbJe1XAjmDRnxzGVFFQ4iBdk=;
	h=To:Subject:From:Date:From;
	b=NnHMTl5T8IVENetFpdLEO2ydipPvd6ynMQLC4jCelaXR7THWunQIpcoMsm0e9kd4Z
	 j/WVm1qAGFFCd+TUiM2a8Wx0dSKbhTgoJX/I75S1AsV8wVlBWx7NN8Amql9+PHnVqY
	 VgvgJmvE0TLQlQTftzKeB4vBHbdP7ywx+Ln9QXQ6GTlHQvZygDrh8L16PcfqCtNr3D
	 M79RJqZdHNgTPX1MY42TPezVeFAtv5RlgclHNo38fCnYk5iwvfIfH6ykCW1CTTaDit
	 BaHPGvLsHlLQt+hJneNghzR1UuG+45JgYK6g9J9bFQWZxkS2eTUIfP3PdeAXHCyJUn
	 xRwMaNEg86iGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5073FC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305725332.1436.3827684367925583496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed80de0ccaf06501cb4a020675383dfb0db1b3b63105fd4e12bab065a3f4ea79
Date: Tue, 13 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663057253
