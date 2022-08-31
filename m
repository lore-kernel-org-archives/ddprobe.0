Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8F67E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC71C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661935253;
	bh=V0tcDk1Kx6lNfPaiZmiRpK1m9W979vPZtDO1Cxflhrc=;
	h=To:Subject:From:Date:From;
	b=FEtskCkwJUhucD7VzZU0ZMzK8JouxPHWhtEBNqXkkcF0BtSEPgmYr66TCCv/gsim3
	 X/UBIssxxP//swVQ4vQRNe6A6pImv0TH+S/qJJNpWio4RilWXFMRC/y3udAukhyk7Z
	 YuYxugHXSuF5f19P4aOEsdCLMVG0Z+VCEU8VTjfnc5AT46uOSV2FnW5WsAh5l9Mavl
	 Aj/rCKW/Ih2O7tJWDbJnDt1ZDI2RcIg/7jt/SqEXdVQsl3dCkB51YQpeIQNgmAb3G0
	 vA1gevxAjEy2a+s2Qi/ILQPHfOaUC1fpivZrw44Qvbp+h68jIGCyv+aCMlJTKVoyAW
	 7WIs9ocffMmhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5486DECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193525333.5144.14204229078651192812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6abe818521cc08c40ed308e49d9797e1d6e72ead4c09879d0dbe77b25abd62d
Date: Wed, 31 Aug 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661935253
