Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69CB7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA74C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663059053;
	bh=yt5uqfPj7vpsTMSnVPcwden2oE0agSIdpfuyRkGNafY=;
	h=To:Subject:From:Date:From;
	b=njqibKiP4RE3ighgsvcbVWQBjp/euAGqR3cUELnMQEPUOn0um4ezyIZ+2ukAB/uZi
	 +8kuC0mrp+QhDKzB8qE1/3WkVLaQgJ89xM+XjDG5VzAmvvmXlM7BbBQDN+cKoXZWDe
	 B911Cy3tMnLrDdLAkS0M+Up2zYYcpWnQIz7ObWKS5CmAu71o/gKBz1FWECZq9oh41S
	 W8fopEgi9IKVFFr80OeWc+q+zVGHafHridurT87UWmV0CqeIUKd4Hn24EKB4X69SmX
	 H5SAetUJAwUp9Gx3XSZsHvxDBiaRaLfQBWUrUaf5tvkJIX4cQjWZsPhhFmXrr2j9AG
	 7Tb7F8ay/rJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51970C6FA86
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305905332.6371.14209920525822793833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537a357256da78ad88fe827397fb3346d7bb1386623c68329ba85d1d2befabd3
Date: Tue, 13 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663059053
