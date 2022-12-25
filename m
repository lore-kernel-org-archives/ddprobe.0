Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EA8882A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F9FAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671984087;
	bh=70q8sUbRb+6fdW1d3gaYFKGcIJpVQIIQGG5MNJC/xho=;
	h=To:Subject:From:Date:From;
	b=Z9nLDWvIwf1ex4k42ORm+QGr8oWqKX1eQzBRVNK0wA6pdS4BfgYxnVUFw+/y8hPy7
	 X0zehrVAk7Tu5xB8Au2md62OU/X1/B1dQGCRGeBxym9w8o3895N5lsiGURyH3H58YO
	 xgVfx+nhzwnngOzsWHyt4cj3gzTDN6LNGurvwNPwFuKfmIZjiUXfJJnNf+dZe0GFX6
	 BFSKITjY5BfYAfvEO0O9GQK1MKv+5FNxLuGDnWx/7DfOwxontMGncMSZeobrbNhElI
	 vBFg7tF+8HY+WZaR31m4O5qsIVkOmEGWDb8LB3Een6AGT0RTTpxF1k3c4sMikIp7hq
	 ha+DdDPS9dpGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 732AFC3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198408743.11258.2925654055257879389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7988461d1c2ff5b306fc96aff1fc5482eb7b9e6b3e2563421f7ff7cb9d394daa
Date: Sun, 25 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671984087
