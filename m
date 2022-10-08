Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA0510FF
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6965CC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665221453;
	bh=ZR7P4eUTCYtOwZzxZDm6LNjWPOFpuWVuqIpj2bzDixo=;
	h=To:Subject:From:Date:From;
	b=vRMc6Uh1/4IgWfUMmyrGZjkLFR+jhwefz9U0FspZaKaO/efe9GzKggtPM37Pdmqza
	 xjXEQ7gDh+NNRGFz8bfHcAxBj9qBHOTQAkulhjbyiyrGVWzM8LdGbM04gax7gHOABK
	 jib4V+9yh1yeB13wAzn5fHbEF16rkT+oThB/bxMa3ciYLWo5QzIQsHUqHAjHilqYlL
	 vUFwFOxcx2uoWAOEHsgEeciuQ7elTE6jb1ShMhFgifQLqyg+fGsYehVvtlXFyFjqnO
	 VFfCwXcaYGheSUBR/bxyhQFeNhEte4SWfy+cS6KFcsIrR9zwCAO3Sk7eH8M3tJBAYR
	 p4wCOJOG7Wz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E4EBC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166522145331.4119.15650662623927668728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164174bb060ea6921e6bfc57540653256044d306d01c677c73f4eb26ccedc6c9
Date: Sat, 08 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665221453
