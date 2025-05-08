Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571B0224FD
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746744594; cv=none; b=qRjnIOhUV0Ebk+FYDd4DwZjr9cXsoBgLw48pTemphuGdGQHjKPHuGjg/NaVtb4WQ74ijAnDJzqztgxKKFX22hW+TvOYqDIzZodmMZwfhcbM6v/JL5XWiWCdOmn85u+lMGd0Ngj7aak4gyckjnpMhgs5dnaGDJB0n5MW5dEOmHdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746744594; c=relaxed/simple;
	bh=V/MzjSBZ41GVHJYc1jieXdzutY1THbGgoqTwZ8zf3eQ=;
	h=To:Subject:From:Message-Id:Date; b=BoR6+oZ4on0N2KKCW8ikk4JpDNF/DbQ38+ehTh9K3yMWCpHfW1m7amx18XA8wtYPx8+OfmGE97akzSKVCbHxHuZLk2rQY0jg9NPL1hPJ3C3I4SfKYVYTLfjiFFrT4flZBEYUrSnCEvUU4lKNmbaviInCmAbQ7i4xnbFsdFDJyBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDkAfnFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDkAfnFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BE3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746744593;
	bh=V/MzjSBZ41GVHJYc1jieXdzutY1THbGgoqTwZ8zf3eQ=;
	h=To:Subject:From:Date:From;
	b=nDkAfnFGVNa5QmPf4mWimQprAC22qyXg2Ej8kBrVzjI1TV0U6LDGocCt9GRLx0nWQ
	 W7UIajeEJNat7x5kQmvw9h3Fbodu4BDNtUVZxoj6Sjg/tq7lEf0tXUewuBsyHd+Vy1
	 2z9NbcHVkXLm+ksLevVLa81kjbGiMiw2skqRU+wiCgSZ+aH5K2bric6X326QUA5SX2
	 KwWdT9tJPNVERwpQFqAURQNirLfM8MsnBoKxx/cThJlA/0n33IdDqAjwmaaVLEIYHQ
	 xF2CMYkJD+dOPmfeblawXrn3Kha9DFluJ82n25j8MvmXXkpyQPp5bvhj4QPJIKf37z
	 z1PIjn8lHB4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F0C3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674459359.22558.2787603051490496629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b262550ed618af12aa805facaf338c0de77321f17660ef74ece27bdcb36109d
Date: Thu, 08 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746744593
