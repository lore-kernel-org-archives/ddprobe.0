Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4484E28E1
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 23:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47AAC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 23:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675984925;
	bh=WNuO3REpyHRDQbsWWnRDlc8F3gixh/fkR+4o+9H/liQ=;
	h=To:Subject:From:Date:From;
	b=Wa5FciR/lU43c00+sPR5eNrw8n1FButsgJDXGYOltBF9tLVUqGnqLr43kD5Zl+uNu
	 6Oc08G4YRDYpPBJvm/jOtSjr9Y3Rkx4mXMFHrVXeBmJwx9j9CpKfK3qvm4CAlDqRnj
	 6vSAF4BD9B12rfot8rf0G4yUWexuh+jmBORkOO6yXDivUMkOqmP9YgJPDpiwQ1wNGu
	 ViW4zp1pC25cWD3+tzUjmLjvYLugICnAvAZKoMkEs2/LW7TIRaRttpcBMnVRV9TyAD
	 luShv9pOtObwkv3Jz+34L34BkwewnT+uowbodRIp+2Jt7tMa95fbH83HGGc0WMty+/
	 YWU4haxcp5mqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CA4C05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 23:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167598492579.28904.3665825215047739228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095e6bfa5e7fcab85cce9c04fc5cd256d8bc2ef59fcfa7187c088fbe7983913f
Date: Thu, 09 Feb 2023 23:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675984925
