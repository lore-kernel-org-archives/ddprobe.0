Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A914A947
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 09:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE99C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692783848;
	bh=buXP/q1jIIVmUqNIqENS0kt3AMivJzC+NDz00Fe2pqI=;
	h=To:Subject:From:Date:From;
	b=iqntxVNjHr5fELqPTLgP8iiePhk2JBrbSbJ/SRRbj44AGOU71bU7Vd82L3vjn7mE1
	 hcIS0YssmBfqf/XivCAmwmyFEI72D0ohyuucHU9m9UgoUTSZrEsedq8ZLUVFtOPSmy
	 sgjTH3M6hncfnP696YKYGEsBllnJWZ2ksNAhgl+fjshpKQ59eWiM3xFvu6R4O+9eOV
	 mGWkUa9ykhuDsG2tJ4DYzWFjSJ8QOn2u3VwG/JwxSTvcKpNN+wF4enug6B+EB1K69S
	 0XYEjhc5y09bbeXjMasnAkm+80Dq8xWO2YfZjtDuwTGFYthCwY4+Nx8pJhKhRhf92T
	 hMi+X0fGJNHYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC4CEE49A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 09:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169278384870.22164.3634934630511664705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700a1fa7b1b0624e25364e6a1f49043611597d146bdce70a78431ff990894f1b
Date: Wed, 23 Aug 2023 09:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692783848
