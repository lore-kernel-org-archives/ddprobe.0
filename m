Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3967A2E630
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752514194; cv=none; b=c73Q955nX7i04ax8uZLFVEkwJmNMR1bHHHkOT1ma5yIeqeYlmfn9oPwmER6/rnN7ok1bbvNCBDuXqjWgkSg5b87EVT3MA1xBLovmFj7HzBHh7nGC0WGo1LyAVvB4GWFxqTTx1ijTlqhPKfgbTj2PvSQOXFLknnOaIeqKr9dnXsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752514194; c=relaxed/simple;
	bh=/9/QeVExm3q5e1UHzo+TdW2KlWOnLvRBNFOiU5Fh3WQ=;
	h=To:Subject:From:Message-Id:Date; b=Xj4o0ldgDdYxJXRC+tuCLppypKXFRGyrKK4XVBkHnaS9j2NCO72ix8WDbOL8Y0xDJCix8w4biKgZwH3BH+RU4MJkC2xOqBFCeXn2/9BwQ7lv2ANUXBWljWM85iCybbBhwDFw0JLG876oyfSHFCcngeaTaaZUrMfSV8DEe8tDg/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUAzPcBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUAzPcBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F44C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752514193;
	bh=/9/QeVExm3q5e1UHzo+TdW2KlWOnLvRBNFOiU5Fh3WQ=;
	h=To:Subject:From:Date:From;
	b=WUAzPcBR5Mt3atgqzR+aIMMm7+lSSWZEskUdANDzbOVDBzz5krkveenKvEgmaqbdc
	 OZq5kPB+5YFNJRV8+TbaWr5aZrfVySxFeUPll7QJ0AHIaEuAbqYwur89lgM2LhtilE
	 ysCTxGkX8k350p40VDk9FD+KYi0ce2KOk7rVeCmWwlHSAi2T8BDe8Ofye7Lvn7hGnD
	 XDGlzvacGIX0/Pra3VPbH5FF2O8LIrmcI3iJCENj0s9qWtk2ssBobWyciuz9jStcDW
	 5F8JC1LFrceQWS4RYr2x89eJMh8Au3kK62iu3G5UUg0SrpDUvlMzItZIJXdbFnz61/
	 KlASOKFp8Ua/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F343C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251419357.29806.7459434292444175987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995df814ab199ee75636fb2dce0ee5fe1a00fad610fdeb22a016c98dcd5f5cbc
Date: Mon, 14 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752514193
