Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D112FC53
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzGtv4n1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F3FC433CC
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699996696;
	bh=NhED1PeHvW3VX6FacpguqgdlaL9yAC42KUmh3Ulg+Vk=;
	h=To:Subject:From:Date:From;
	b=WzGtv4n1WBi0h+vttPK87o9uxPl4rwGllL0ZTotzBUjjky9bgZXHtzsKOEKoe6fhM
	 yg51aLLBr8xZUwst1J+Gy5Q3DxgeokjNKuo8u1jAcN0u+WGHW7dZFtDeS1p8S63/Nw
	 1WIkEtqIwCdfeuEWJVASGWwDRC0CLai21D/1rKKMpG4kHrH90ragu4vTuFW8TI42i5
	 Pi3sK+r8X8vcUmhW5KvHPz1bnFZFMeDt6RF/AZJpf+VpuGJUoT3TP9Ijwl5hqRiLV0
	 MERPwotu+143EX83gGyVYNQjlxwp/0lMRXxYOjjpGgDM9zq+3PI6FQ+j+wopT3e28y
	 ZA+B5hGMJ1fDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169999669658.10616.17555082284418778536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94b71f63e44f2141c7000389511161b03b94f1b3233104a7040de282e5aead8
Date: Tue, 14 Nov 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699996696
