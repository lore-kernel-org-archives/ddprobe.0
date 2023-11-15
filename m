Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3FE2C184
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwObo7V3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E155C433C7
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700060896;
	bh=e+n6DzYuzWCiNCFgDzsaxhIvni6MlqCgHGgN7wUeEE8=;
	h=To:Subject:From:Date:From;
	b=uwObo7V3Of2ZCCK8gcAjSDlI+wnqElKjdNy8ElebJX+7saUOISMo11Ci29LrRBjJ8
	 Pe+/nY0EMJaU/cH/0YhsZmYart4SI+MdODWrNbw8s0ZsbSCdQioiLUKiT0L+1fFGtH
	 JPu2pGsxT/XAL+T7cqfmhHSUPfNK9FMGvzcLyrW27sR4KtzTOy59Vb/aX5tUjGKbZD
	 wS5n6244/Q9VAUJJKBksIeSF6jV0/gLcS9FHbmCtHh1RfYVFIvWxtvJlX+jK4wjFXb
	 p5lf3b9sc9fHO58JQo5AjzPma1ysp7MYpCNMgUIiVJgGUHYS3CCe2K6IbDjqoYU3Cz
	 WyUEQ2/DHjj8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62489CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170006089639.1775.7406967773617181044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6916b206cc3ea02504454020cb64f7da240c2cdfbfe92fada8cb1929416857
Date: Wed, 15 Nov 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700060896
