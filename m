Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF7F3876BF
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774641894; cv=none; b=Yp+PisLnCsKwikSaZvZccFjhEQ+nlHwyyiHcXxTVcVLvFaxsKVcfG/qUdA6SJRlBHwGniuBcZU565t8xl72Trb/ARZWglIqYKBe3OidXSZcoBBZE9Muwl7ibBGQy7EKYhjNNeDoLqyis2VS5yRqHvpLu+N2NmjvZphconBfwOvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774641894; c=relaxed/simple;
	bh=av5bkx7VbhfSKg1VF2FscNB251wWH7HKSNfRVGevCH0=;
	h=To:Subject:From:Message-Id:Date; b=uQ+wsqWHdA39qnk/3nD42V3MHw2TkygKXa3Bk0O8PleW6zcfExvLFyBj/gtHBeB1gpPCaYRDfWNedaSKH6ZQc0vxHrxnx8Q9lufOVVzRk07rutz4QEpWB8jwvMq/PvWeERTMBjym5BATsJmi//eYZHGpe9EWSYxUefRcJHU+z0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOgowJx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOgowJx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C67C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774641893;
	bh=av5bkx7VbhfSKg1VF2FscNB251wWH7HKSNfRVGevCH0=;
	h=To:Subject:From:Date:From;
	b=QOgowJx6XwhsxG9Gvrx9+LmVrViYdAS18ZKhKRvxcyVOZimpZ/UHA+61RopY/FFUq
	 zTUROdBn5Q2EZD+qgyyjmGgbCaQN52q+MUIFjNvbm2GIKROIyg+0CGAQ6X+ju71HhS
	 SPZLPhpv+zt5JVhWOx6mp7FDNlDbtS9mhxS4/qwmrM97Y5JkTlZABW639rhdYaRmQT
	 065KbFREKOB7OeCmsP2v7ZLTxaKRA3EHqCxlKfenlDEDUc1T3PK7DyJnnuB+OvBOnP
	 ewfV5+fBMOQ1Qy3Tq3UOYCx0pOPwsLjhD2xA3VzP0xHoXnpCVbM11Z0l/XPTcDTw7B
	 IK1VhVYIJqrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9496C10F2867
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464189359.13114.4335155197042215230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c60df20a636ccb88dbf3c344879342a9d133d5f2ae840d5feebdcbc101d677a
Date: Fri, 27 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774641893
