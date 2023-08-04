Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDBA1DA50
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 21:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB88C433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 21:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691184188;
	bh=JSrHOomlHEDaRDNkrSyy5n6TMRWZ0eFme0O3FQqgiPk=;
	h=To:Subject:From:Date:From;
	b=VjxpBAdZ9KMRe4yMFinH7zOm1yEMvTUUyapDez7KAeyZepwY63PMiz7bOgpzmfKGC
	 uCUeqCRznJhDre0TvJLDVkOW5MDOWiV+1xYGNoewjzlOkNkkIQnGtuUogUkyKwy9rA
	 tc0luun3VxNVk2v8msrsZaVOc9fFXpxVX9Vj5VXAKDF7W7uURJ5CEnzaoXS0kGqBZQ
	 l0fHzT3J6gX7jcJmAagPHJLXRO0/pdPA02VlYjBc+fQoKKer6mZeVpeSrK2DYCWpzf
	 MpgSqjR/Fdw04ZTgi3Dr5F0XfEckzgnIg7J5LqCDg7qGeyCdQvdig4u0YNT05Aisqf
	 LNCCxrpoZ3Cfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6ADDC001DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 21:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169118418867.23285.5209653151511961039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3b3aec51db319fcd004517cbeab45829e3101413e994f5332a33c53879b655
Date: Fri, 04 Aug 2023 21:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691184188
