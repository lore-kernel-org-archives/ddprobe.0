Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AFE262FE6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754748593; cv=none; b=fhsSB0grwa8aZ7eSj83UqroRhdfApDisRbtA1wQQpqV7YJVIv2+QT1EQYfIXs6YaY5XXFhFrU+748zZUimdBqBQj1T2F5j1XWK/nAipDrzbTyo1WxQ2Y0C0MzYomAcrHAciMVoScWWTtLib9DaueTTIJRuaxMknHXSUD1QrVxDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754748593; c=relaxed/simple;
	bh=rESDRbTBSQ9wd8SN48Q1Hpw56dNrMLtjIr7LnMib2AM=;
	h=To:Subject:From:Message-Id:Date; b=CIyi7uTrOTb3r+iaEF5w5tY/FkQeqad6qrgeYrQhv1XWIAgEqjCnfyoI8bJbUfZ+T7zeFjE6MuJh5rbXGL31MXoTXt/YupPTUJMnAjLl9Qxh8kN6g+s5TpA20UAefgotfgy8fwysF2tXC9QuVYLR4s1HD/VZJHgYJN4fqMC7GGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCNDcyB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCNDcyB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C66C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754748593;
	bh=rESDRbTBSQ9wd8SN48Q1Hpw56dNrMLtjIr7LnMib2AM=;
	h=To:Subject:From:Date:From;
	b=MCNDcyB+JVp6CBAZpLlpctMvIHSrxG1eWw5OiKylvQg6X+9Ht3QkyLudtc3UeuWSZ
	 0fKNFFhmji5XmWnEgvrUFYq0ixFhu943SU0JrcNIRK+u01lBB+wfMICxKmk+57SCq3
	 WYlaN7ZZDGGLzB5Ood7/cx1VNG5XmMAcnFBataaXc/3UxCUzBOeN/6KvLMODoXK7ao
	 IFEtsSCpxe0da1M4NOeUyKM722/oGlm1ivXh7d+SegfW/3m10hYPTQCBUf7ZR7xvmR
	 3kytn41BO/oRiMRwfm7K++Q1Kvf2pMaer1mhntPT1Kkb5imsMkPL61WpqmQFQn+p4i
	 7HYUXjqNHbO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F0C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474859357.2397.13733839553702196254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aaf23c60e9c17220a310a35fe0c8563fd5494ae67b93134d558cee0cbfbba2b
Date: Sat, 09 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754748593
