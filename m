Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE4EEA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3B7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662801053;
	bh=mcrMEpEN5yDAbwEFNp3lztMb/KINvtdNiPrpCdMuRGY=;
	h=To:Subject:From:Date:From;
	b=XWzKb0stIiOk+mVQVqYAylFetv8711rAQsBFkVp0sQ89fFVJRmp/Y1ZHVVZDrj42Z
	 vzhyZBedMyNgtDXk/qBUjpfGJ2p6OWhi6zRwureatRz9/Ah5BWRljBZzmXGfboDpD6
	 TgKoTzjx5U4FcXOT9mow43gB1JoMUUJnEhZvsu+0K8xVRvCrW1uSPajMzX8vXNvcRF
	 c5KJ0Rv+UekXGB/d+Z4RRCcdcpANuW773yJXoUudh6c56Jd8s1xJDqqs11X3Qm8Dgr
	 MB0aB7+URLsaqTmJbyrBmhAI22BZ/DvUhBMJxa+JBvWWPHxmpH7NVrRXyc5jtDs7N+
	 96rpQnT8I5E6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AA5C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280105335.4500.7814443958156250601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4e038a43f75e1e21c5d7c907fe848cf6bd46625bbf538ab8d61a34fc28ee3d
Date: Sat, 10 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662801053
