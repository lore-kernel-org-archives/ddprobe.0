Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C231367
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld0pWeCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC4EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698470296;
	bh=j9h6pHm9vLkGllZYm9JmPojT0692Eonf7LTdNfN8278=;
	h=To:Subject:From:Date:From;
	b=ld0pWeCdPqDvYv/PCjDqKCr5Qe/U4JHtr9OI7mab/T0YVd+iYkcjtU14MChmRzelI
	 sCnEDf5N0eb8y8JSdHCpK+tDIdnDcDSXNQ0E9oH5TRYZPH8vNXetPwxLzUbY0x8nsC
	 PUE1/zH3doCPl3KXA5Qd41Wqe9U/cypDp0u50/vIvnHAFDTifZ2gz/NJW2yEasZdm8
	 MmFpRRsVqPteFtdvepZhJzNTWuMPwlrDQ+La0+6okWLO+4+oZ34PL5peVL69f8OXEc
	 ml9cJZlorZlBInxlk9TdqYsY5JZKJ7E8lkVW9HtYJC06+Thk25ldNw7lYbSZOz1FYn
	 yMuKhL6kZsu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E79C0032E
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169847029641.24759.4000537615236913738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebd7c9b487f1fc6b15af3ad80600d271d57e13611e369963fe2ca44c59b6dd5
Date: Sat, 28 Oct 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698470296
