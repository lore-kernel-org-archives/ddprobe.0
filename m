Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61237D2EB
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 16:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02F9BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 16:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679416686;
	bh=ZCe5kium74jiW7pgNv3ZSZBLeu70wyM17dhNYyG538k=;
	h=To:Subject:From:Date:From;
	b=CcEAKTgTU26g60tqCiDSl0tMfP5tGUTUmknOajd/BQJ+bfoiIDp6901zj9ztBy2+N
	 DJVJndNJIcXQ/6KuWRaU7EFkyxfMF+sddv8zjhHAJd0gJvQABHg0yZv9d1INwpcTs8
	 zKUtHP3Jik2uwbUVW0YRshV8Ra5N826AtwRAksgdx9t57IQOsHMVBl9N2rLzxn+C2D
	 dll7sOG/T1/gb89LfalvasTPYwL0Kr3tbpzr+FlqVRAN7FTv+603JOIbgSm5Uez8TX
	 22YlhZiivRAw8ZEEo6GpWVqdTwH7/9HIkGpyDJH4IA/cJd0ugUf6v9/PAAwi5aH2mz
	 FXMIu1YvEIAVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7317C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 16:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167941668586.5497.12005674049719532409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb937a67e41462e3943b9c96aa04b3c9beeddd1cd7fb3e3142a33e249d2b827
Date: Tue, 21 Mar 2023 16:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679416685
