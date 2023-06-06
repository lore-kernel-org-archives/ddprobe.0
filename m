Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CFE37B71
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F56C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686059525;
	bh=qDbTM/cb91YavxkO7gamdF6anrsaaIulON1LKS2NRt0=;
	h=To:Subject:From:Date:From;
	b=dinkNaNqlKj0OHyUh+MHCLm94WVs06DLAKCTE2JgHoMLCL6PqCdFac8GQa7ezIRzE
	 9GT9N1wnki5/X9v1tfs/nkMA6gI8M/SpEUinhBC5gA+aScHDNWav+3tJwGV6JDHLd/
	 ABpqXS3iHG4stXji8Vd6RUDxNaNTh/vyDqE8IUm1FlII9wqFPpOJP7YaDmGEx/7+B6
	 Nt60LzcIB+ZYkrrtOGUbH25WU93tUkVtd8yBkF66u1QUvTeL3YHEG6pcSjsQlntnUV
	 3lqKy6xLgANXOCYTT3ACOwp2J5F3vDx181uUxL2TXnfDktet9dsqjvvsfN1smAdNzJ
	 rJ9XUseJwD9tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AD8C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168605952574.15270.7341126359290773118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d19e77631c9c4aca7bee2b9df4457edf4866993151883c31eca2d80f384769
Date: Tue, 06 Jun 2023 13:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686059525
