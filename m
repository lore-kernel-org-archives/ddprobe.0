Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C3E46556
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724421354; cv=none; b=I6Mt/Onu8tP93oLsXXwTBouhKQP3FQcbi+ZpTzvCAhcnX5xzOpazc3Vw733rNhzHa80WcMdQFVoTthJEgoru+MFZQBRiPn0+CeXaTWbjyYSWIhGrmVELH9/kvlhItnF4+P321jvA3yUodJmLOXQzQ6g55DLEN3GahaxQ0aTdIkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724421354; c=relaxed/simple;
	bh=1VQj9twtJ9Gx8a0/BnPHw/Vf4aHNVFzJYeVqJkFWnjM=;
	h=To:Subject:From:Message-Id:Date; b=Flf3FbFLabd/bxGe2ZyfaZHbe32IGO5uU3jcSowDD3GJ/UAP2ZBL8vmQoJMPOnXHrKqmUm9KJdzqBP7Ut+2cCgzK+cAAxGZmJD2sdSzeYCGoKTVomhhRPMOVqmZ76MsKEZzpC71Fwd0Q/vsmyiK8iYBd0xPd3MWMQ777WvVGdBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gx5D5Tgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gx5D5Tgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B152DC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724421353;
	bh=1VQj9twtJ9Gx8a0/BnPHw/Vf4aHNVFzJYeVqJkFWnjM=;
	h=To:Subject:From:Date:From;
	b=Gx5D5TgnuDJC59kZlzGV0VpBbxMql6gy89DWpJA20r5FMLmOueFA2oRyTW/FwMtlW
	 /dqn+DqlLzsYTEXMVrDATLxVAoeNXXX0ZbETuY1puoyEKds5t7mhtbuFtGqpKaRd2E
	 pbDyJGcDl57Kf2K/QGfvZmWi4sFcL6jo0qzcxESQJMIeixVUq1AvHLX23hAUVYfJkx
	 lGQdFOOhYRdNu4hFnXLK+L4uT2rkGOET/GnZ9I6s8a1clXMtk5Sgtq2GaDP8KkNrDX
	 AE7vH6B5GSkEfhMATSdBP/ROxXL01JZ2VH1B3NTpEp5vszYaGJ0eF3GfuHD62smbtG
	 PacBHu/LcsFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B679C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442135362.6649.773695329738582337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aceed63db424bf6d6829afc82468fbc9d265cf46762428bf31d87470ea54a36
Date: Fri, 23 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724421353
