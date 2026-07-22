Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB25B33A9DA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784725714; cv=none; b=oJqbrbEw8++KXZZG5GkLqQd0gPMaSUzHwGkcBeMoNuBAKiYBTJcU6J2mLGoUhNeAYLt/ncXU5WjktWmNQdHG+x694QPCT2r3/XD9OQD1skbdIKDTPvJx2y4T8TawkCIlf2xKENchMULFbfPTFYT9AhKVDXLV9kV+92N/UP0jPEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784725714; c=relaxed/simple;
	bh=2nDJg/T23Lh/CUU+CmBzlx74yQnnVXkQ5a6ml5pplYw=;
	h=To:Subject:From:Message-Id:Date; b=tnD2KqijPgB4DIfcy8N2qoXBcPrTpTiK1hCylmY2HtLt4qJo2Z53x7o5EqTB1+uKR3xTHUq+AXVJawfRjO3oBSW6nt3eXOe4tql2c70j0hi0ba55XTrKNdzl0iZCtpZu59JjFmSQ/WZKZAYYHt4J1PX3wOgCwrUjzP/spyH17Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIwNVFQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIwNVFQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4B4E5C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784725714;
	bh=2nDJg/T23Lh/CUU+CmBzlx74yQnnVXkQ5a6ml5pplYw=;
	h=To:Subject:From:Date:From;
	b=cIwNVFQ0k2Yq+ReCeffhkHi1UMy3DzBLIJ3SBxZ8icwmT0DpeQ2HFJbVuTN6NCo4y
	 MM9frBspz8YKSForaDOa19d0hEyfrS8YvDatAs2vT3J6ePjkAOYGQYTLwAhsvlagFE
	 2GCorMgySDgjnyaRODypq4BEdQ6Qn4cOn88mLn+NooDmFSyqWgdEUyrgkllOe6UI0v
	 LgTEcUMCHYGXh3/AfdM1YGRSczthlvkM2xyCYjqI+rjQpOearWB78fa4f44MBsFTst
	 HEil5aiuekMp5X8hipPtos0bBOWbklSqGSjbexjHQ3PgpNh6umkIp2O9H3ZAVFx6Kk
	 D+x7I42Xgah0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3338C4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472571397.8217.15567701160168063144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8fa896190934009b013b34fa75fa0bbeb8429a1d3593c168a8b3c82ba6bfc0
Date: Wed, 22 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784725713
