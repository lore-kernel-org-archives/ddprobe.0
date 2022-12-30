Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F1228F7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76472C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672423287;
	bh=8SNBxy57b5bvsc1fPcyTE2W+Rh0QDOLbNYjPofT0h0c=;
	h=To:Subject:From:Date:From;
	b=ci3l52V1Xq6X3xZrdjOJJXwGAgIt3FmRHbmHsccziiVXqnF2TMVUZstb1yAL89XNC
	 +DMwe4/Ed6OBEguk9lXjnuC+aQwpWiQIC9RWu4pX8hz7GBOa4QXhUqSLqojd8cucvW
	 IkQYPhlFn+KsI3PC/gZhAFZCTs6jqX8v00Em3OAsvxDSE0Q+Tz1U/3yQFTRoAOF4in
	 h7KYj0BlIiQIWzjiDOUVi3WL/yT5WWII3cb6fYT+LfO6CNhE2Mp8NZaQyXj2Y58SOI
	 7Et2Qlk25ZzqNgWhaXGg/gb7pW1crp1ys3qcYsaaSUyFIpU7Kutcq6ymUBomGX+xW1
	 smq/Li6z0MMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F854C10F1B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242328738.23564.12235905918281276842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f3c2e7c33e88db4e94e7e1eaf24da23799db150dc6b0649849d0aeb2e5d09b
Date: Fri, 30 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672423287
