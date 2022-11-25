Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8485CBE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE80C433D7
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669399254;
	bh=vxT0bwGYisOl/Qjnuy2FR54V6RwrnUZOySw//MG/mDE=;
	h=To:Subject:From:Date:From;
	b=YdQhuWygnmuTAVhH92sRiQwj0aOPjEbWj7SpHWEsvnYPdcZCTrwcG7QIHNspA5lM4
	 bl0aJ+gkHeGtzMGeelK/QtqZ23QK/nnn5wiYhbNdjhSeujnTiY9nzV1t5/lgrNotN4
	 4jAekgn1gVs87iNv7vgx6CN8wQUgtloOcHUtnD7WLwJCt6loinqZ8CEWTzvIkxjN8v
	 Po6keH6dJ3ftM/lLTCY7jIC6iraAggo8+V/dhXiF2Hvvts91ejVp6kLYf3lHizi0Rg
	 YUvW9TT9m9J2LdOTI15DWLXJsAIkY+3aLWGQThLTfb/TUv1WaXYlKkaoiJJUOsiApi
	 Jymkc0IOYgOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DB5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939925440.14536.1650614779819153851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc9e32c64d367135ebb6bfbb8a252a4d5875d3d7fe5b68f27206f4800b02a65
Date: Fri, 25 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669399254
