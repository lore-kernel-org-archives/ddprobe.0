Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64B01849
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71058C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667622054;
	bh=6dOLkqicmPkj1429u9bso1HUQK7ZB1vVchudDZlamIM=;
	h=To:Subject:From:Date:From;
	b=BVTcmGHVDeCL0TON5Nam3Y2CkTwZv0HO8c6r1N1vV0LMF66FWMh/CiVefSS08spX/
	 mEBUjabRzG1gDPFMX5nNDYTOItxhtyvl9OqU2Coezn5hMGeZ9oYNW8e3OguOzH7rBC
	 aYotSyuUXEdNrkECcuPMfOlZu9AH1wQfdedSCxpMXEXntoZwyCDThnUzpL8td5vhMT
	 qVnv+b86c0KpJV4PxJOk317xwsBvbAwT+PpI/p/AfS+CvU+pIIRuEsyEAwlAXIwbXj
	 +wiMfwtlccic5rCm1JMIhiXU1fUIPXKjJJmNii2/FuaRymW1zXaOWLGxJJ9aFHW9e/
	 LE1PhURoDagrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DE8C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762205434.28725.9258669609251638106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164b51dac799684fb781778c2110dc1a74cd3118e1708531321136f9e64ffb49
Date: Sat, 05 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667622054
