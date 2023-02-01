Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265F38483
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D674FC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675274765;
	bh=Jz2k4nzs9Id/FbieLCRRWZip3QrGzKBO48kieKzPrAs=;
	h=To:Subject:From:Date:From;
	b=U/57IzKBzv9qY4Hn3PFck0HwUPCXJYskydUIOR3SNDW+j3Tek6rLhTJqIttwiwtV6
	 P4Rp7JAb6J1kd5M/wURLezrx4j2AkXLJoclZhc1RjMFzW9jJQXEOsghohusucvjBm0
	 pMJ+m80REgT6uBUjuWQ7JoYSBKO2TLJn3HoN97EfuEhGmOS+nNuwnm5xK4BMyXv0E8
	 Xa5ODl2RMMgS6kp9yhOREPlLWvgyV0KQW9RvxS29K7aF8+FgC+hd7aaXOZHg+lELK0
	 phfxM+o3KnjGa9Q7pxrtQy9ZAHeQzHem+9+Bfkj3XBn03h5t+T0l6tfzxVevaCp74s
	 VWjQH0WjY6hOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9830C05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167527476574.8815.1609633375562208092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92b191ec3c069d31c103241b80d0fbbf8aa9cdebb08fe7dc4b450ca8ff0d9f6
Date: Wed, 01 Feb 2023 18:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675274765
