Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA8D360
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e70eY9pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E96C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699489096;
	bh=TCAcrR2kk2jqjMdQKd3TTK4emmC/CqsiO/s1PlZWI7k=;
	h=To:Subject:From:Date:From;
	b=e70eY9pzTzN7YQderrHiv23iByViAbwf9gSxW5PnBqbsLX7Mf7HP0Z94P4U/g/Azu
	 bO3fK5fv/yAb8B3F/Pz7tAUxGRIsuByBPdFYWTaJBXxXRkgPA2LiPOdBfZRzv7epcm
	 SSQLRig6FKAeAQ0ywNIksZ7HagX+pqgG4AZCuSiia2odOMABU+Nue3WfPBO6rEZJLv
	 ISDr1oKx2IDEkK0M2ITbXviEsOtwy5zuHpvPcYtUigKN8xYFHT1yvcoIgx/LLNeHpR
	 yuyNEhO2mFxXpo+qjMvI2SGJd6030PrtEAMpEfNELeH6mdJgSWoo2OUj40GGZU4598
	 Wpjq9zZ7g4ZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618BFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169948909639.3929.1260156333273704534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94949109906b9a8da58cb1c2bc95852c79aa2d845362c83c30706efcdd55c21e
Date: Thu, 09 Nov 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699489096
