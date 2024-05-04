Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678FA6BFA8
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714852943; cv=none; b=qD/+o0Kccxc2KbBimebrAoe1DaTL8LsTssYP0aON/106kXKsj+ev/RV5oUAz1M5xPHqo5JinouYnBLfVN1yyJdKQ+avQHa67AOkOuJGWYUlTK/Ge6LRQBFE0GZB5MBG8gL6LMGyOn4LtCedDh66TPWGxCr7CpqIRLUAxouxs4aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714852943; c=relaxed/simple;
	bh=1qFvRHPZhvxgiTQcfRE/vr5oCnHtNmOCqV0XEyD9+ps=;
	h=To:Subject:From:Message-Id:Date; b=i7Fl+jnDh4ztIbbYpdLwhP0FE9JHscdNU3BIBT6uLW9BTW0AQ73hcoRmFhdKz9qGFvXaUJF1rcIJ/iiF7CYKJ8pPMOaq2oLcm1uq3hFX1jLeHXtHSvY7n34/9BROfdmp/xl1sLiDxm6Wl/5ZN4bz+c6ZIOxgArPrGXnQGyy0qfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAv+oCpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAv+oCpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78ABC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714852942;
	bh=1qFvRHPZhvxgiTQcfRE/vr5oCnHtNmOCqV0XEyD9+ps=;
	h=To:Subject:From:Date:From;
	b=dAv+oCpaS/1oRMU94s0Rpt9zCPHs4cgHNVeHHmYvqD9f1vH+LexijpoincgfonxSV
	 E7uQYlm5MqkLVQtCx6OI6+0tXXxU8J/eRkUNgTthgDUgDt3nIxuic8nHW+XS+Tylcq
	 MntGGldpsX3qsOZqiCieRGxphXH+dU1lCtVDNZanblyuDQZoqXeiYjMqROtVjX5KAB
	 CpnxWui3n2fb5WQQHEu3061ClKwH/55VW+SRsg8fPGq2ILgtxDuIJbFZL+IbOEdQHN
	 wDk3eEj7DuqsF1DghlaFjCWQtOk1qUra8re4blb9UFflSdAzU5iWpBsGAyG+tq4lr0
	 p9F6BCdSXPEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C68C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485294281.10900.12464694384529210009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573715a655d95740d716cb67fe7140bc297f5cb0b35d54a9f034a8d14abcbe5a
Date: Sat, 04 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714852942
