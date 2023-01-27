Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C615CA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B50C433AC
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674837785;
	bh=/0dv0Z5BEqg22GS9a49YEo36XnhfF34jZZqYEVfxhfE=;
	h=To:Subject:From:Date:From;
	b=TrYx1/yps/l41gHNU7W3nv8ftTStFL8SxPYQ/7W8aLm4O5Fz+FgE5q+6RVoCF4kd+
	 VKgG0Y2YuqDCG7MismwaHal+EzMe9amx/iLuM+CO6rDb8LctTOwl7gz3kEEv19WoM5
	 mLOWDSuPG59VtguEkURawO3LNbtl3f+kGjg5ufeKqcLKjP0rUSNbEgsXO//kVR0dxx
	 uuYzmDm6gH3/ZqFlriJSs2w+Z24Au1sIzXK1r/m8oDqn3Wdi3qmjp5Y9ckxU4r6bJm
	 pZXKQmyhHlbgwfyKv68/3clMtJFA8jRnfGXylEtHZKF2dClq6mt5nt393hSoqYgWkQ
	 bi4szGajo91UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA984C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483778574.30711.14855385759963346877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205d8c160b1fc8f9918d77314f2cec1f793c52a4bc06e0122c53c5581aa66754
Date: Fri, 27 Jan 2023 16:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674837785
