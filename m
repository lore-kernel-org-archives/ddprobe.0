Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5218441A
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63ECAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663963853;
	bh=8Fs+Y6wX2M8MQvbXIPQCXdSuIlfkHLcE0SFuaPlqwSU=;
	h=To:Subject:From:Date:From;
	b=gyWK7flXNSScXQ16g/frunGjerbQfRBE3zPrd2I2jdIlcPNkXuNMaAeD1bmP2YSls
	 S6WflOfP7mPsynFqC8n7G9s1JOFEhop6VCOGo9kKJl41IOTDK/w/peQC3rJg9ANHhb
	 d/ZUoVaVv368xUnLf0vwZYKOCJt7WmgO1EfkFrEMH7OJTC6hu8gzw1oYGV6o3jDcx5
	 LFtP3dv1i6c3cmZZt8u8vCPmLGSnXaUpQhhJswxTBRijTiotwGAWwBX5KBeiK5QcTO
	 XOcD1YkMkFMxXXXhDWpNAnALPSATx2eV/oevz923qjKYAC92Q5wFpSODJ6pJrLT/G6
	 W5bxmuXRDU3/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9E7C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396385331.21994.10802714394271499818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b67e098028a6ee83a5598dcdb76285e5867562b8ecfec5d130e38af9a65b827
Date: Fri, 23 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663963853
