Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4845715CA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E8AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674837185;
	bh=KYc4Ce7m+46YU8DPqErDA0PIc98emOxOprE7bm0ICCA=;
	h=To:Subject:From:Date:From;
	b=ReCFqKfy6MuDEg2Fp7x45TX8OHLXU77Ub+LIW0zlBYEVCUH7GCQ5KI1CbazPYqB8u
	 m+OWxxYEBl0TC0MS4tawcvgoxzW4Tv/Ri1eqhInxItjQslcNnaWs/JwnUY2Sg30BML
	 AK2FbxGJas95eBzdBTOVcoI5z3IyNmcEQUFxHCfPg6MHpxoeCeZNNKI/P88renSCPj
	 G4SDOUOUnsTpdk7pOj1+/FaNbd3p8VSVUIBBnPPIVrPTGYlDafoDVcFudmhDbfrad3
	 EKNd0vwnUJ7fMb7Z39UIAVwAVbbVNDXbuN3ceRqB+etWGolG5vkh1JbxD36D+RSd7y
	 LPkn6M0qZvX8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54FCC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483718579.32699.1326266382965549924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330dbf981feeb5377eecdded046f1d75162ec87502a052d217c5650e6825594c
Date: Fri, 27 Jan 2023 16:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674837185
