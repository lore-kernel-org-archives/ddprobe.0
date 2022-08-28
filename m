Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A9D17E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9A7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661671852;
	bh=vozfmPwg0GZtRZYw7jLF1jqHC1U0u/NIfkPfOWRjXXc=;
	h=To:Subject:From:Date:From;
	b=fOMkXqUxjtE8zKX5yvB1ET+dqgQpZvX1RQd1z8s8gJE6h4H1ITZrQH3CN1+HbAZVL
	 fhlUnWRlAM9UYofUH0iUfiipDNhueJX+nHGxaTID5rnLwDTfjXztnncHDtanyvqGDJ
	 R0R/Fpmucn+rjH7FktQxIKc6cTmSwyDv2gknGVK1prxmaD2nWguI9VXXDmArbqbU4z
	 Hr6tQjh+jK5HEzuWenc5beZfRvSYyVebAFK9rSRyRPMq4KTG1/WFPmZVoeQ10qI3Gl
	 2XOWMfGYt5L6OsZsI6Tq+Oh4gcFA+scJWIIpmGp5frSJglfAa7JwikoVCrDkLhGrD/
	 HuLCJsSUnwrhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5655DECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167185233.14279.7318902768720000539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea920e5f96231d77895e545803871c3ecb9cc8fac2afc3db029c7e8dc4329d7
Date: Sun, 28 Aug 2022 07:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661671852
