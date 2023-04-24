Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5032C2F58
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 20:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06097C433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 20:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682368986;
	bh=p7y/pB/7IMyLuX8s9OtHOurqKNmDj+nqaxseRoXM0zA=;
	h=To:Subject:From:Date:From;
	b=VnRC8h3tme7kIxrmImHuxwKNKzRlkziJSWa+wexm/F7891+vwBg4JQizPCSBHfZqu
	 JHAH9Z4EecjR9WpmLXFi7R2leC6mTIlGmKsnTa2SQY2xd0EE+MqL32/ndmLXeLkHOX
	 UCWGH17ecshSJVf6slH4EQHpVqpOGG/txvB0ARcqVg2Wzb81lWdCfeWLUI4OOmUQIo
	 CXFGmwjqh73lLcEpzQkcq72MWOm9jrbjoDDKvhMCKTph0kCc09vQen+UAvjp9/yvzp
	 ssNGPf1SOdU0t3YaNWT+kM0AtT3Ah0soqhIhcDDcXxu4WO0cEVBfOzlGC9geNRTzpU
	 Xa7fpPpjqFDxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4F08C77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 20:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168236898585.30840.14739929052535449087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a45f6696acc458a09b1100777d180c67104fa17ebc27e5637384d4bf1d20e46
Date: Mon, 24 Apr 2023 20:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682368985
