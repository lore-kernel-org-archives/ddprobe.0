Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2876AB5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAB6C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666393853;
	bh=oubOoqpobEN/eb+HJo91+X5RFfA+Is+BlJdSbaOzkI0=;
	h=To:Subject:From:Date:From;
	b=ImGvgWclOPQemSbZTL7MzqwGIe1TRHdSy5GfYG03/ZoBD8FRp6knf51R15tbQRgRK
	 DWNVgwg92/46IN4iriLNmVpL2qzjCkDFDErPLPudEuF+KMCNVV9uGthKkQQajyzMNW
	 MAoyzolq2ALPzDt3RH5aDbP7HfNlgPfZbEcaNHyzj7fBcq8JEF3Tz5vtlGVGlo9x9Y
	 Kb85X0lbLSdvyIsygVB5g5Nli2gQ7DPKAWYM5+UKPHEplQoLW+IejUbN87whiyMIlF
	 KGAAhkTlKEqO04+b/ZxIjKoC8waxAGtDM4M9AFjhptLhjuC6vWU1yND4ePrcT2dz5I
	 ROkYCglKGhyNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DB7C38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639385332.1891.6752544387734240205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f850c75670b826e0edb28c75954aa4552181757af751aa0566b4bf35b3d19cd2
Date: Fri, 21 Oct 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666393853
