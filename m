Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534F563DF
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WL/LmEEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA078C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696852628;
	bh=V3xrHIM8hsn2xPQSQEtLouCZJROorxwsupMlJeBoIpo=;
	h=To:Subject:From:Date:From;
	b=WL/LmEECqrQeZQTL9Ssx1qwovE8oHK62K61GEMGuCNkU7o9uWpzDviNTxbMKVnRmn
	 up3/TFm3q+bz2dYtZ0iNBNYVnb5XnUlzlh+05MsrCPff4N5DpKfDedKr5B1MSjyT1u
	 dCAvSv3RVfeKZhFkNLqKm9wt9y9+CrNpCljeNyseX5nT0aViR9W5QJ9Pv/DXPHQ0Sl
	 KKyBmDiIH0qV9oB3eP7aOfhDn6besMbow8XasRnZV5OxxUwOR36DSqwg8jFwiNYtfW
	 PKSanD1B9GVI9iLemzwbczb4B+EVB5mImupSmbG0jSc0212KBntsrozEBB/jpl94gI
	 6rk2mZv5w9mOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6FEE95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169685262871.30459.7466993307155544570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b039a7725776d93041fc7de060249ed9c3443e46172abc304bf8a0c8eea5674
Date: Mon, 09 Oct 2023 11:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696852628
