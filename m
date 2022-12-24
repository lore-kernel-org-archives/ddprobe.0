Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3E8210A
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 957AAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671873087;
	bh=zxrme0BwItMtRse44OKWLhQtmnJVJIAe//UII3Y2OyI=;
	h=To:Subject:From:Date:From;
	b=lD52f0n1hvGW/QqbLNeqwSJLM5uH4ajySxc2KZrKbjSqTjwHSXADOEp+MplSq5U27
	 wPuTeRTjj4UkKdiVYZo2DpCzCgS9oNAptUQw2Kv4uNS6sQSkRj7K3PkIRT5t6NnHEo
	 c8Vkxop5W1Q8pkEv7z+EAVizSwFUfOClC5j5xAYX+Oh0GKPyU/5J8ax/0s5YKG09Fh
	 Zg/GsBzuquYcf98BPqWA87JgpdQhd2GBWhdSqTQT429NodGsE1h9k+Qdbt1KRhw4oh
	 XTKkH+0QQ7Ik/bswK3qJuSKz+jdBvGJdFrqdEyZgdE0STcqcnV3aZ5whfwq6xm/kJA
	 KJENvnALn2DOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E98C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187308745.22243.12525426103891768186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05749fdc69cc3835cf533035d65e5b8a3fd76811ebdcdb6beb18bcc5e77e00a4
Date: Sat, 24 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671873087
