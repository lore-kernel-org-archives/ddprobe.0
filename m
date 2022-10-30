Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9826127
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA9CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667127054;
	bh=ZZv4Gtg6wF7PViXpGB4TAHPQSPi3wjofCcvb/C+HAFo=;
	h=To:Subject:From:Date:From;
	b=ZlqesFFep8h125P6RDAdvmEr/0ie8b45wpU//ANg6pIHFn3APESqYk/jG1viqfmyd
	 qZClqfN4c2t+a2L/hdJNYfD1QbF/DqzxSwVmiAtwwB/fWw1SZfskC7fmlhuJyzvsLN
	 EWqxJfFGyDCFca3b+vhm2SQ89wb3RAaNvHgJAYF2qAOwx0hL+tLaFOYCgNKHOPKWB6
	 RaaetE/quBE9JP9ELecGhHREDP8yYvYdnATg3gqx6BJ+yDnbjIWzZNavAZ2DPVdIRJ
	 01p2xEJwOpJRNTyGmCY7J4ETau/XS7KSSO/5WqEmuadi74CC3v/VjLnpOooL0avBPG
	 8zyaiS7VIUc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59960FA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166712705435.24546.5823042259809689260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2625a92c21334b877eabe15423959311ea91d2c3eb343d7e71bedbaa08e9db1
Date: Sun, 30 Oct 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667127054
