Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330A52236FC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746125994; cv=none; b=JK8LyjYM20xv4Oi2+5bzhJcGsbQPObKGsB9sByC4h7O50aZuDZwETPYnwrsfpKeqsZ9j4HFqaiRDfQYD6lTaghox8zt4hk+MbMeJNMoczF5PER/fSn5KGeNEgSHBP5cS8lBgHSBp9rpMgyfO8tprYpahrF/4Go/ChhSn0WBIG/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746125994; c=relaxed/simple;
	bh=dnwFNYQR7N+OdI1O7/vrTa2qkN03e4nn9T/9onbmMcU=;
	h=To:Subject:From:Message-Id:Date; b=DLlEm4hAo7DqMKWkGmwD1acwoRlui8n3ISKmdaPsRWe0OrwGtyipWWRN5q9UbIC1/fXb4JYOG8VD+irR0sxYEVFcOXKeuEiBxZuAXpqQNzHb6zqgbnPuJuaKQOiW8BEEkGLfCDtkFDUiGkAVWRSY87GSHwq8UD1G6dHm5Wq/HLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN4+x+sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN4+x+sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6BFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746125993;
	bh=dnwFNYQR7N+OdI1O7/vrTa2qkN03e4nn9T/9onbmMcU=;
	h=To:Subject:From:Date:From;
	b=JN4+x+svafAxod8dzGXT2uflZJ9Ixq+hLuNgRkmqNViKm6dZL2m/PoTSZ3SZViinN
	 0gMayd4U8fHsWwItjXEDnXb0Zj7GipGsGnFSfe9f/Xl4OLEPl3Av+hIHg1a7TjK0z1
	 lHClPQIpcH5BAYrvmor+EPFK3gGFCKKGoHQhlTwzLv2RLJQyz5S5TE8j3CzwoJwHUC
	 wE+bmZLMGTQvJAifv39PMbAlsfdG3s3mUVCBZZ4J/L8RHvl6eYsGHtRwXPgtX8ghCh
	 mmMMUzyjz1hTnAlpfb1rICUA6fmiNjvGs2lT+Bvwt5h9NM41GSA9SnvFISTRDVbAFA
	 f57fjdUlJyYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5DBC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612599357.12758.3832616097825051532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128b9264f2fcc386692147c64e93f1572c80e796273ade64f43cbf1a213094c2
Date: Thu, 01 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746125993
