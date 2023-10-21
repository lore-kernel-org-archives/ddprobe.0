Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6AB63B3
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXd2DXZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 852BEC433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697882896;
	bh=26s6x2YY5/if1n9ZM9iAFfxlr4FVrZleKWPv20HXNLU=;
	h=To:Subject:From:Date:From;
	b=KXd2DXZvDn9qcMTQEuGFJ91QWRwT9Thu+sagXuB2hefAaTVLRSAVshaVjC7CmZFFz
	 yhIcRpyx/hv4ZZzzyqmF/oLO//NpTa7gtDyuJ/ObZsoayP6VqsTG89HHweQumVb1mV
	 4AzXgrDhEyc+KNGtUr0dWV/3M0M4M16i8JR6dycJPlzSD0fozMAkns4bM8UKHhWn8u
	 HJEQ4iyUfcHQp5N5SQg6Pqn71KgVFxUan4SBMzSIKJyD/40lmq9M2ibEcAex2waVsv
	 tRgThE9NEG8BFnIld2EhZz9h0IUu2dBIh5l2O8vt1Up7RgeO7PHBfEojGB0c5LKxJ4
	 ZIjWMD90i51eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD30C0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169788289643.5173.11942576121831550874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339d7a5b18afad823a84a8074d273b247cf91491849a00beaaac1748b30a5600
Date: Sat, 21 Oct 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697882896
