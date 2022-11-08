Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFF78F4A
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70547C433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667902254;
	bh=ChRh9LPedHAmZh1wkbAlejZAUeVEBj92VydlE9OPXuI=;
	h=To:Subject:From:Date:From;
	b=hT/N7Iakhdd7QdykAcUJlcJBeHw6qQ5ghza9mKIUZWlXe/EAz5UBxea0zvdT7CqJA
	 sfHuR0ug68saRZL5HR2MZ8aZuG02ABGNfIroqadDlomEp0VCt8ejQDzHOxufynzvCB
	 NZCFbKZK71Lw2lk3RgezqYLZmWlE/jdeCRjH8dpmECwWCwWwcy7EAyouDTCvQOSFOb
	 ARBTJO5mipZM7sdAHXriz3l4LV+W7V6RgmpNz+OnGTv4Jn496t01jGlHBa26eVLHJ9
	 WZwEjKn5U4RRMlBA7P8lqgorP9me0uL10HSsxWulTWajwfqoyXmZvzi67f4suFN29Z
	 sTN1EIP905h+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5394AC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166790225433.5814.12272977579840802561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d65d975afce7b56086e0f0a308abe996ba5659bfa24cec8fca669f3cba7053
Date: Tue, 08 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667902254
