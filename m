Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD701D798E
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758656394; cv=none; b=A7yrFc3SbwRDP3yKD+g+e+/Xqj5bVwrsjDEJsDbUIrYHgPknG7xz42x2TjBQJD6aHrM4S0Kl+OAp93DQe2LEmwiLZ1LBa4oEWR84GuTnifgboJImMzMwifwLWFiZ+2/AxLou30q2u6gIys+QjXLGmgnOM1h7CXaAAge2Wbl9Fkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758656394; c=relaxed/simple;
	bh=fDol6V/FzIjxsmZK3XNXTsWZDcTU3egxKxMO6BmnvDk=;
	h=To:Subject:From:Message-Id:Date; b=dNwkEtOTZJL+bH1UBM5u/OeqALtHwHIn02esp43OPI9q5HDLD/Kwg27Qc2bkKLX3Z1Jy+NltXxrbeOBD6P/yIQ6JukN1S6PMnxu9SQ/r0oisZbpQnX0K0oced9EtYVtL8lDvCWJUd/RhOx7yd8ZhLbWQqv8gtnxqCkH/Fd1APYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p++DLAeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p++DLAeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F70AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758656393;
	bh=fDol6V/FzIjxsmZK3XNXTsWZDcTU3egxKxMO6BmnvDk=;
	h=To:Subject:From:Date:From;
	b=p++DLAeuz9DOHOQTk9YqUiEVBZTZIMS2KA3WqEw/HC3JCaNgFvpY4zfl9vBp00Not
	 XpdGmZBF7lSUfY/7g7VDobiOVPDTx8hFNHF1jbOBuUcIJnvnXDQYFgHuRWndPEc/1P
	 9v+ayBt3INlWwwtYT2SRQySqg0MtXJSi8VTkToq3Usmw8mc02IUy1yW8TZ23xdsNsj
	 FtsrHhU3+lZQozujxS1pRfQRi+UE5cXeRxe99+RXIoxZuPA6Pcc/76ZTi3nGbKzkpy
	 atAaDqOPG1sOS4loQdVHja2HaVzXW4VWs+/GZHBdsRebs3k5tk2naD4QhnlTbqCbVb
	 pB/qSEvKZkKPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003DCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865639358.25777.333664593741478165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5d0ac139cbb4c2d058f11169be3e995e32d196059748746644c0adf59d5ff2
Date: Tue, 23 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758656393
