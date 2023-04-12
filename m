Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327488C00
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF06EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681326185;
	bh=YzgYM+1aWzL+X02TY/V/BkzZDQDFKO6JManwufQ0eg4=;
	h=To:Subject:From:Date:From;
	b=oROjEDmUJ1WdeaAARQXxe5y0L0HvD5c7ZL33hVT8MCd/12pYKbniBBTtgu+HQ9VrH
	 3BmjtV1cfhtft6NpaO9DmLS0C9aBWwRDXWiEVnddTyBygaC+31VqaKu00jPAe9bmmd
	 dGVzbjbrFE82mm6kvhrc+8tRltbwePy2FthIjVgpmL4W3U49UFQZUI3ZvdVnGL/9/x
	 XO/r9TV2u3A/24/0sR8P+d9boksEHPuNuGUWYs27Zpr0gG0gtoefTE6WhqetFW6IMT
	 +ygL+Rscg2agY94xXc2qGcR13D6Al0RHU/L1zlgd3lnG+s5Mz2RxHLet9xE364/dPi
	 H+DyPdUaN9Y3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAB7C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 19:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168132618576.16789.5668362770827650413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14a83919e6f1822dafb3f33bc1dd6be673095574255e0f7076d53301ec7c893
Date: Wed, 12 Apr 2023 19:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681326185
