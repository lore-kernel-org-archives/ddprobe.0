Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597801F09A5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787988034; cv=none; b=ju3rpIqn2IYwOo4W/2mC8qslgK20CbTu3Y/lAA7yZObuZiNA1uInoQxc9z+S7gsMCVHTKzF+nHZE1lUpZVHFEnRkAeWIEOFrT9m/8DYGbnbwQI7o4BhI4hRCw43cEkRzu9XaQBM4QaJy76KzlU41tToBDggj6dbPSNlqFvKaZ/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787988034; c=relaxed/simple;
	bh=vLnpe+rt6tcRCwjMm8RfzL0ck0+XU1XqlTuErZ8Azi0=;
	h=To:Subject:From:Message-Id:Date; b=Fl4znnQrasrY0uJubpZvOWoG5UTJUG4pV1b+7yK3vSxzeyqTNjrI018kftBZsrOnjLNrkF5NmYgURqjfFTucd4YxeF0FhgPFT/ly5EKBr+GoTqTY5TqBPXxF33xZ7owB6DdT/taXQu7ohDtzO8a8NN6udmycs6lLBx//DmXCfaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/xVfiC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/xVfiC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1313C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787988033;
	bh=vLnpe+rt6tcRCwjMm8RfzL0ck0+XU1XqlTuErZ8Azi0=;
	h=To:Subject:From:Date:From;
	b=J/xVfiC1PlpRES+94u1+f9YlojvDBvKB65xiAa6VW2HL2ohoZxx1EarRVvG+o+Q5e
	 KYADLovC4rUH/gcGAHcn36mWLOkL/Max8Lh3exxT2MY5CzXxynpbL/yXauZ2Cj3azF
	 JIjZhPl07op4QgTc4Sl9gw9ECwlWJBU2+Fh0FljNwsW/UACpe1TN7U5dMaqLmUgaYC
	 dbf3HqlnkW3aHhf8JcgDH6a6ldxjGvT7dak4gH696rPDuCwDZhJmDD+pABPOTKrMAB
	 AnOm1qWQOwfL0Hk3maG90ieOTbKenPXVVXg9w6C/ynN9uC2e3I+3bZ8l/RrGUpeXAb
	 wv5IVmBRq6g1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD563C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798803368.13750.16367556977398647255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf0e029c717b49460366d2ed26398744a33baa613d453ed52697e8b2b43dcff
Date: Sat, 29 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787988033
