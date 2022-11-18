Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC283EB29
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6785EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668745854;
	bh=rrqsPeihYFRLYyRutL1+lsYveWCuKW/1RfG9OScuhg8=;
	h=To:Subject:From:Date:From;
	b=O1BvJZ/V4x59uy+0b+EgGwnxmIBhStnyJTC8+EcTT3vh6Yk47+JoXcmrLuSBwfUG4
	 neHEEmbhbxliQD9N/i+MYb3cAwlxZ0Nr4aH9rvO0AgE2Et8G8ylM49IsiCRtaOhO4u
	 6Tkb5J6/hfj6VyrpDEPlh91Foftb8SMSvNd14BV+gfipj+wRdSB9wS0bzYIfYa9oGS
	 d5NReKeDByNbRVoLmB3wbC+KcGwbTrpAJ5PB5k4VghjOP5tQ4g2PJa0LuZZG1BNQuK
	 Q/Ka9KZ18UAmCdGlRKGkYlqtGipcEZUNW/fnP444cw2H0RLxuwQ7/C4kNNJ5gROZ71
	 oUm8Ll99KOfLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F110C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874585431.13356.16835759517955503833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889882931dda1253a51f4d11045b1e2c2898730ff0bf7852fcb53a54345500c9
Date: Fri, 18 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668745854
