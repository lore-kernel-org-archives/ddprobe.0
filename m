Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D5E33CF
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C588C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665082253;
	bh=7oDkc0OQOoThhBdEEHmaUOz5777eivdhsYryI0+By4M=;
	h=To:Subject:From:Date:From;
	b=JCi1xJMJzUoI7iDj3HCOgjPgDL/cs3a0bSueKo6RvnaoUqpdh5qDZqkndUCNamuya
	 KXF3J2a/26xJMCMVnKxXeEvfwGS6Fl+NxMOBmddC5NP2kOWbb4ZoCUII8dIG791EVS
	 5hu3ZfQg9zQOF9Q3h0EAK/k9PPVkH9FWdBwNbjVcBAgavsEo4bBJUkmVzI5sHxqbbR
	 JvX5HAUbaZxD2bXFcGXxwkXb+8fu4GMueNJ/EHOqd5I/WsMFO2prgbY06aECKB5myz
	 JrOzj7K+o7F2kSdSAF5gTfNY7ey8YO3MdyouPVolF/pgxpN+RBF6nTz5JIQNRvrCPl
	 UwtoBvHSdsbJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A77C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166508225334.10087.17903250751037888724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e069a2ebaf804ae3af51f0b2e9caa5596c65659d440cb57c6211079cf7d972d
Date: Thu, 06 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665082253
