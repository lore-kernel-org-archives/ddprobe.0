Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF2528ED
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79526C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668504654;
	bh=mGvCrwtU0cqiBxwalauQkMSWGj4Z3eFJmT03fVaupyI=;
	h=To:Subject:From:Date:From;
	b=BNFfkhmwCyXMOJ9IyPYTnyo94GfKtzZ+TASUKuACleMPE+XbW/EU0mMX4s33NWGLl
	 y2izIRXM89NvPThWKLY+rwPHOsU70nO6vTeL0QcywMtvvahf04Izb0vgcMRTTC9H2S
	 lE0sw+za3kE/5BON9099RlQASN+GQtW2JlAnDwmZy4I7wCfJO2bsJ1BGZFyfZ0lPpD
	 nV+JQio+mUadpY8QSF9d012/za+VFCvZrmubFjPuneadHTclQKpIkarDThgsDzn8xu
	 kVzu4/sn1tJUQbqENCS5u2tmWJhCrXD/7NhuctMEIyNyaBh58Fe2Bj/gLvOyBkjmTr
	 Dr6c4eOKtxRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A2DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850465434.14638.14761684952687290687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825749536afca38d363d83b3efdab787e218187d2d955426bdfb1cc94124dcf4
Date: Tue, 15 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668504654
