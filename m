Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81D9AD23
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD81C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666890654;
	bh=KUnt+JZTAOjuvFxoYH9NxrmKKa2jK8lMGB8cXCifhRE=;
	h=To:Subject:From:Date:From;
	b=EFGv0CZ9eUtDOdbCDjZBNXB/6a/w49F4AYNunHONOSDxe+cZvg8hOmIV4QwCzvtmj
	 0W//Z+bgzz+5d4jl9EKogrZ+HMX/PiwgAiHU59C43N9nm2aovlyJgcqv5hYJzouhDG
	 jUzuQ8cgU03hO1WsmwIzobr/Okr2cbvBd25meMqYnbDckfjE6+VomtyiYC5FjUDvl6
	 ZCRFGcmlI3dEeEtRPgvRcp2F6v4+WkMr7fg3GZuti3o9oMznMvlGoCDWz14JkI7fC5
	 eXMhTy3zoJeiEboGedcZfi+Oqey854iyZsUVt4uB/Vz06+YbWVIuuE0+bSYGHC7jM6
	 r9GVtdQ5BD5mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524CEFA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689065433.20454.16505687048468990896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c8c570483e675d2bdc57cc3ca04e5021ce267e9bda21fdfc9256aba4cc99e5
Date: Thu, 27 Oct 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666890654
