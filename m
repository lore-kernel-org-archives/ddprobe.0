Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C129718E
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71009C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664029853;
	bh=k1/6G6QqaWr79kNtlSHceD5mwTolnal/qnHKevfeufI=;
	h=To:Subject:From:Date:From;
	b=opZvvHXCBoeNhgDBKD8NkMjb172JxI7TcEM90flAZirdqWypuUDMPAVsmZf2mHL6+
	 NGcDW8n87i6ZzUKFLrlw/NmlcF3f3fKDZExmH/5P5ZFUeGlj7dSBiWXHL0KTvNLlgE
	 kz6Ki3CPKyF7liYLZFgTfmdB9n/+ywjr+1qhU7FwfB9LHIWmJPXlyCxdt5fvWLGrY8
	 bXVLKenDUa1RWKOn6bqNMz2vQE01907l5ZkSMun3RDlE28Auq1qx2F2XLRLEVN8ExB
	 o4KbiuLMl72w+ubxnY8mwtA/WObV2mamjd1kk0CDbgc0IZOOxAwIE5p0WGorGhyRk2
	 NR7B5u5tONCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591B9C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166402985335.14561.7947542091970390981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd70a490a41a296ad35b1a926e86613a11bbacb0c7df0dc9640af1ce58fbf9c
Date: Sat, 24 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664029853
