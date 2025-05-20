Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316FE2749FC
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747738794; cv=none; b=pMA1JuTFM1NfwDi0S9LUKojYIVTTWuxEImni45mkmFcZ4A0sCB8emiDalq0b748BzazRQ0v4yRxWJJ9ODDRCEphQ/uMGJDdQqHvqbQ1QdZJcp+0LKI5rYKRV/hqqroYNFlTmIdtXLLESkYzuCXzLRN83cDWo2sjEoMOSgmgscxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747738794; c=relaxed/simple;
	bh=fitnHUFi5qEORZ6aU3NEsp0bNuNvZBVbuJVsfFuJZKI=;
	h=To:Subject:From:Message-Id:Date; b=OSUDzfd0CPTHoHF0MhlVXlgXVFb1oDmCnPMA9jZkrTvbVVjusfhapHvKLrhIJaviyiyo2xifrZDMxqKLt31QFgkKNxeiFmCKiVJzhsdJ13TGEWCbCDLy9PSgJIVgNFgImjMl9tbi6yRtV7Z0dGGQOMxrpjYoE/E1XzGqEYNWQIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVFH0Lj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVFH0Lj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B74C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747738793;
	bh=fitnHUFi5qEORZ6aU3NEsp0bNuNvZBVbuJVsfFuJZKI=;
	h=To:Subject:From:Date:From;
	b=aVFH0Lj8cB5JvSX6DcA96mN5uXyfK5M9T4jgXXVUOoZ5c0uD0TAQIqeSLCT2b6jGX
	 isyFJMzV6YJqb4gwCOkc+oIDk4zcyp04sypYrP7emRHQljYZrClzn01qiO106oyw78
	 rc2DtpYzgIWyRunaQ9AiQ/8NC+XxownvT024X+3P1sAjZLfXL6YIB6tR7tNJKTVKOS
	 8qIDLNiXyISLC46fDKBsix7z9oJ+HGtKFjElH0A0CU/KV2YtkIqb78385wJa1kUJj9
	 Tcy0DRJYVnMIYUEHYmf7uaqtRgwwGH2CWlvW2pMSHa1wBpzfzDU62KeRBDmRwtBZIN
	 xDI58pH8sPMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93590C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773879358.25647.1374765504901448981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4cf307d3ec0349caf30b69535a200b4e37270da707bbc51e5663e15a211416
Date: Tue, 20 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747738793
