Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D28258D
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 12:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B1BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 12:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679748725;
	bh=E8Yn3QcK/dlMR998q9O8wDuHeiRevBhEkZmN9tSNOj8=;
	h=To:Subject:From:Date:From;
	b=atCVy1LL7tzEHZcBgdHYEu0t1TfDXlRC50tGGZ9h2aW8My/s+NCWf/5rwHP71NFnP
	 /7ajFKcDF2R7UPOJsyMcfrvScDdz0cYiQTY/Af+EyYfAEP/SB1rIVY733UzpEplh3V
	 im1uEbu5xPsOsRG0ao5YNzS7CXh0IAvGxWM6bMYrrGQzP8/CILMdgzPsbcNM/ms7vP
	 hA8SJUDt1YuA/oO2b+8bieopePAD1zkG2PVL/YJEo/vfQskvr0X7KuMkzs3fE8eREO
	 ZJMGzBj27AlZKEioH0PEyb9Z37YbICKMwlQPQhFedRCVXriXgAgyvo/wjW4Qcfp7Uu
	 k6s+6VUIRaZgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97DCC6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 12:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167974872575.14556.1179463695872282595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881339bd759a82d817e8ccbe6b69bc17763532a82dd6d9dcec9ac309f8b22520
Date: Sat, 25 Mar 2023 12:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679748725
