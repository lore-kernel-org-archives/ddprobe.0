Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31DD369
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2CAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668925854;
	bh=NrKyF6xfVswP52epOhgedGs4FdPVFtAcmxIgu+IMfWk=;
	h=To:Subject:From:Date:From;
	b=kL0mom3z3HW/NLJ0XbIOCgWU39l/Bjd6Oom3SpKiyZ14hWQgEvAvThbkDcXgDl1ig
	 t6GySiVbf6aldIlfalrYBuN6i/scUtOy1LSj+riDbS2JPCaE/hYfbS7lTtRKUp1aDp
	 V6OBzZGHurlD5PiMnQLYOM9hqvlTt4cfdYFAonnMbZQNdS63rtaDD4uQI2u81bYz+R
	 leg2ee0tjieTSEyEkFGxRTF98705aVYjDbjyw2wegTXCSWK10hSNxJCe7K2cKXrfMH
	 jhNm9mE/4PmS0oSKhlI1aU0zyS34vhZsh7V3bT4ue3ixnF96Z1az1tYJzDgX8Jpb18
	 bdv87eMyyDGSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544ECC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892585433.26148.7696283850231320660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4c4de30a511dd36280a64e57c2af24a7530a3e024565d2baadb6676651f0a3
Date: Sun, 20 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668925854
