Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F08A1F3BA9
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757829594; cv=none; b=Q1jG9pPY5LqZts7z1/O+NtQ+4X+pYP4tClHsFf0HD95J7do+wI1A6mYU633LRRPsu+HA9ZZWx9M4nwPH7Sa/8K4cSj8WLg5u2ommvYDtc1Pd7gjNl2JVZolEVzabGUahgb+lQ50ispV/42uSkN82A8LQ4AIL49RhYJNUTVYz3UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757829594; c=relaxed/simple;
	bh=9yIe1P1/0sWUT6jf+wiOOODbhX58oZTM6cOLy1zEJaM=;
	h=To:Subject:From:Message-Id:Date; b=VLXjkixt3pS/YIkWYy9ZwjQtJdrPvV6ae9k4vzZejgt1/T+4xwppluO011ax2JxKoPJ86bmyorYS2+pIknFa8BPjsp38rU/pjafcihC+qHrtVcmWbeOq5DBg/SzLTtlIozWdXs0NehAzIowxfRcW0+KYZawajH/jKhZ/XRMA4Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3oZQkT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3oZQkT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEA1C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757829593;
	bh=9yIe1P1/0sWUT6jf+wiOOODbhX58oZTM6cOLy1zEJaM=;
	h=To:Subject:From:Date:From;
	b=F3oZQkT6zeVieJkBZScHA9qSTjgEzRHixhGzLQ1by4CWTtU8EKS5H7zrYTj2jxc+t
	 maeCme16DRb0o61VHkkuH7ZJ/PpYme6OuIcXFnu1nabGtOykAn1h4XLDy/S5/e9wfQ
	 MXHChY8glxNOuNDEiuH5V5YjVYu0tNlON0xmyVTA+oz58XlwHlORSvnjaQ69mWHu5D
	 IrDnrxfncZr6Jz3V8lKNsuqzB8sYpvrMKF/Qk8gOsaGGzWr2DokVBTGOukd9fU97js
	 Dt86l0BVaNkbDvTS6C9U3JVuWFDkhsrZlznYYUCAGGp4c04QUFo7iOfaOpJzLiwbxR
	 jVVTn7E2iS6kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E920CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782959357.22171.4841461639272859281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4603434f6a36f01c4514efec0ebc540eb795c1fc44c4be4fd607e9cb4455a8bf
Date: Sun, 14 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757829593
