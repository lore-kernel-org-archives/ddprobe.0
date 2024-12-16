Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF19946F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734354954; cv=none; b=rP5uo1DfL6R/x8JfgALlUSCvUPTvxAnXMHoSLEEasNP5cQMRSCFyNCUadAgIUz8GuGoxL2Sv6qD2l9KVQ47HmJNMim0ldva/n5m3gh8noKwpxPXCB1WG0xv+8UalCKVdTIgwtQac02qElTAhluM54GJVko3ur1oOdnZauFCuIm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734354954; c=relaxed/simple;
	bh=wh4VpDzTOal23U5OzakrDaLyvsyWGXHhMduLtd2Iaaw=;
	h=To:Subject:From:Message-Id:Date; b=e8sKd4JLSHt1WiVEIQ3CYnpqIgGAir7VINtj2PPD8hvUqsaRODtTWQqzUoqvzMqY9jNU89lHtcIr96TxhFkGB3R7x0MyNp3I4zOkJLaGqYMNqchlykAIMUjapvknq40HzCq67/OLXG4gmo6mS+YefigtVMFEiobjXoGLskqLkbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqSjxcH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqSjxcH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CC9C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734354953;
	bh=wh4VpDzTOal23U5OzakrDaLyvsyWGXHhMduLtd2Iaaw=;
	h=To:Subject:From:Date:From;
	b=NqSjxcH8jOvl0QkTm7Hlxa3+mPpO/yOM26276L4g1Wa0WmmOgWvIoS7VBJYPH0p0A
	 PX6OBz8nEQfw+BuW5WgoCxn1tc5Nf/YWfCHFpYVnjCCsbZY5W/lDmAEDkvz/jiBN4W
	 eQUUobcvajuaD7GZVLkG4E99sMKTJu+seBvPz2g2ZZm8qlhtKFn5yIGH2sGlqlSFeS
	 jb5Mbs0FDuhb8mapoBoFcbrd9SFnpsaekOcESFb5fETJioNMpxUEg/X5IGZzTRF6Jy
	 xT/KbTdX7GMw3xFQIFKXEI60tztsr4tJ/Hw+fVugCl85MMzYKDI5HbI3ypP1Lws/+f
	 VQI9Eb3MLtI2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A84AE77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173435495361.17981.13229153780823062599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67874b9beb70160c1ffa6ec74788e484cefae781c0f06e970b886881e006241
Date: Mon, 16 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734354953
