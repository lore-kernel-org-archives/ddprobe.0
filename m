Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EEEB644
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735350954; cv=none; b=gxXQSXptDno6OwA2OhzTgOvIwXca9C2r1ACnfYMcZP4LwDx+JC0JfKkLosW0Sj4oQ6gaqYcajcjJespsKIV1B98eGRHoi8se1Ly7T1o5/XAkK+oQ6nu/xsZ/PdEGjqVaQDVV/fdo1szEW8y/yJoSeTw1Y2Ha9IKzRGfTOTVDZVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735350954; c=relaxed/simple;
	bh=zKYb8QBsRQuMCDcsfOtsUb8OjNNjLEWDzrdCd5ztvqw=;
	h=To:Subject:From:Message-Id:Date; b=HYAj7H5Uw+Xu4E1uv9LkiDVLZA/r+2Nx00+xu/opvHZ+Mcdp8EA7c661sBbLOd7R0SgTxm/hAPPvPDORXGufY6LvJCml7lUAoZ/rPxlyTnRPjqlWaMLiFQoWM6ljhXaKJuN+2vesyGpljAzG4D2dldzmyEEE3MJ44piB9VIs0Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzNLycBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzNLycBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9820C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735350953;
	bh=zKYb8QBsRQuMCDcsfOtsUb8OjNNjLEWDzrdCd5ztvqw=;
	h=To:Subject:From:Date:From;
	b=YzNLycBviHjuS7bOfTtxE/4uzdMv0sOHra2kFoMdR48/jgF0Dgje7V9Mu4XoHHQHc
	 6beO2srRt0JEQ/MTlRD8Ic2EDTOb97SDQOvAnN+XBv4lcgpjaahnd2RKmGqgLoGDjN
	 HhYFZFASwezjAZPQq7u/o2FQ7GV+Fx6sLkj37XC1IM/9NM+2OoMV9uSt8iGW85tvDu
	 YoIO72R0XoILltAwKbk9nMQx33y6RNGyUu5eMSCqmeKEczeJ6Hwg4RB6MfAqO5OvvL
	 hjBGXVMxxQRG939qvWVzbMoot7jwmGAUY6QZqprAM2PFjOQze+5RwXNnuAYFEZvEP5
	 aH2XaHv9jVISQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E247E7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173535095363.9641.16132914552207248558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8cb83736865e13f1ab54d48b51333ad504d940cfa4c541bd78f26c9f46f162
Date: Sat, 28 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735350953
