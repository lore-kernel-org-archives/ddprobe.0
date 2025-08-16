Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0319D08F
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755314394; cv=none; b=UMem9V3Yg3f7b0sDuC8F805oHYszaKGb7ePj79um18tjGW1qkkRbh0GILWiG+ZeCQvRxxwy6TUAkXyjYMh5f1eFnUgYs9wpRPscDMImOqzJ4qR/hYT/dQvxI3GTy1Bh4jG2QA/t4La9ZCNTJx4UQd4SMawVd1UBiHAHn5g17Pqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755314394; c=relaxed/simple;
	bh=6jjrDPby/f4MJGfXCrsSIFTHri5jf+K0vfqbUVatNf0=;
	h=To:Subject:From:Message-Id:Date; b=FMUdzz1dYR8RdHuDK0gggxCCCvuNSTaNtNeBNeKf0bdbsAQqoTIwjxGsYvwM8CxgvCTzFIOqyRPjy87Uyuw5eu69nHmANsgMfMFJfKORnH9vkTOK1Ch4KPKeL4JVts7mJcb2HYf6Ah03izCLvRPVzCjMUpaWcbUvM0PBPNw3Snc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4TUtfIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4TUtfIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755314393;
	bh=6jjrDPby/f4MJGfXCrsSIFTHri5jf+K0vfqbUVatNf0=;
	h=To:Subject:From:Date:From;
	b=G4TUtfIYitBWPU1zlZtmeTqkCq1eM1MLlWP6EC9OEk5M21yafK8lco2unAQ1Bb3zh
	 pJ+LlMzk6GStYooYvgiwGl+JzAi0LuRiCGHW50p33upAjxifa+eWzU2FhIo6tr3/gM
	 ZeAeWy3N3y0C0XK919MxPkQtrdT30CBSF/wJusKNcRQALXFXK2dMGIMUCv9mAocrc6
	 rrTpWqkccNW5PftidiT0kyyr3HZspATGdqExdmWSMWMSRbgANUNX4TtzxWXGABbfNs
	 hbReGE1/o93goQyTvG6FtpDWDrKteD77VokQFvms806CupYjUX8Cu8nGO7UDxVAqBq
	 86APcEX1UH3Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E948CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531439357.9259.12825876062810480704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5a1a661dae5231437ba5389308ff62c5046180989aa4f8aafa527faab5a09a
Date: Sat, 16 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755314393
