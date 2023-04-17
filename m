Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330591C30
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 09:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3579C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 09:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681724285;
	bh=4reEFqVvVC8iJAEhP4ALvTGQwQ2+8NsLqNMWqvLoqpM=;
	h=To:Subject:From:Date:From;
	b=DPtzARu3LosR0KNfnF2xPMjwfdBaP1Qy4VuwbMlh08PMZB9DgdaTxpa+5hnVDGm9h
	 TMTtQb3ZVUZOgyVgn/vZ5ckpJsf242kXKxf3lM3OXuQLpHnoePzC4ipGzrufDfLrSI
	 AT1MEPj81/zCFbwGIiif7oHojiB20oc3xGV1munusY7k00h6OVv6uYg9OvhKvr8920
	 BCe0cgx91+uEUIIw+RPpqYnHX0m9OHvCh/y+Y/Z1eob/UJ5t3feVGUO4nA3fZqvkQR
	 oCYdSpgmVwjH+tFMU0obXQQcvSn2kKKEJNxVMk851bRyA4511sPTCdSXu58dXm2m1B
	 /6bxh5UsVfMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3403C77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 09:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168172428578.10826.14844533205656535172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522e48be247e6380530f6ad617a4aca6d337695fff5b87a4900c06542b7353c1
Date: Mon, 17 Apr 2023 09:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681724285
