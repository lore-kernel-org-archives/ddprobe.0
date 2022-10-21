Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62017B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736B1C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666390853;
	bh=7YUrBPatvZ1mi17kX9tUFLp7mQVLOT7GgvLnIQ41/4M=;
	h=To:Subject:From:Date:From;
	b=E25VT2Wjrf+ZBNy057Xjn7LRGplSEotFVWX6kJJfhdv/L9TE7coBZT8LRKNkZtKBS
	 QU2TcTBlIlzu0s+aOjsaIQQ2yuo14BfDnmvj/Q4TtfV+2aDzqH6qzCLlpjrhVxriSU
	 M63LtzXfHtDsedV91n5imVdKW0vCjXX/NKdg1irNub/WyPT++YguF1YUC/Pne8rvns
	 Mob5CdYxNEKXskLNwqd2Mbnl4z34LJ9Whe1DM3tVYwS28qlXfKBK5Crfn7eqS0yLeB
	 DoKIj8qG8PAjAnqentGt5E3mZfZCtpzTrJXSk4Ti8nWkzIMsKnuwN2CcTt3X+1AOyh
	 y3orV2xy/xUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545C7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639085333.493.11683574697870436900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621506e431c92d09a9bb1a4992f12477a113acd56003728d70c78e0b546ee91a
Date: Fri, 21 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666390853
