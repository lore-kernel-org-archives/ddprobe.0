Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34926143C4C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727338554; cv=none; b=Nbz3G/iW8RN416AEfleluAIvGAyJ9D5e2XJPSQwKVnd1E7jGdE9KESgA16NyhllLCsA24OPmbYOcJwl76Cn1uSqlEzalIWTc5iKpjUfjC18Uj1O8qUpHF/hpzgCxwPDTo/VXoSSexE1+Qz5g3QoZLa37hHyjVB6HUz5d7lxt/jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727338554; c=relaxed/simple;
	bh=RAhil5Q7kvuV4XnibilnzqIMKHh8W4D9LJ0IiI+Pam8=;
	h=To:Subject:From:Message-Id:Date; b=aLa2WT/64D5PwEjgd60iTgPbLRSf2NyINBq3FfSzWZK9ELGlFJxNurcsvRTrimIfQQPmejwdqEtZEEkil1A6DiB8pqy6F8wBzLP/ffz3uodiP/KrUqFmlce7X7s0rhKFw+X3Ip4POKiGEtYM1eI0bFTmFzzNmMJWhcjvKTE5h8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYAIw/8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYAIw/8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4836C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727338553;
	bh=RAhil5Q7kvuV4XnibilnzqIMKHh8W4D9LJ0IiI+Pam8=;
	h=To:Subject:From:Date:From;
	b=aYAIw/8QcV+tkvK5FdBq9H6YQ+u23//O7ui9wg3VbNIaQy86guVRedcc+gUansv3j
	 puVB/mA8RIya/UUu8YpXichO/hlRqiFGvKMIUBOYPbxUsGln7jSIjFyXH4ki5zoBpo
	 y89/GGGvLDJDxFxcrQIjYCjg4pEmMlfU7JZosJ71xuH0UDWmQxC+i6ySvVf2HtFQ9B
	 vEHk/ZFzHm1T1m9udlIl5v0Rv/Wi0h01VLg66t0xjRy/daahCdUQawposXkRJ2XkQ6
	 cQTHuOToo2SnaqVAiW67iQ0Vf7yLm2AbVv0DeKyZK/86mbCtExB2fA4wCLkjMedLrO
	 h3Gg2V1EwAXsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C5CCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733855358.9223.537297307072757660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09fabfad9a64de9f341c50e0c3dfe335658cf3cf97d037a271be819c78b7d0b
Date: Thu, 26 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727338553
