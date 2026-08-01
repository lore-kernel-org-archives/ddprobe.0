Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A28D36197C
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785564034; cv=none; b=jJihmCGuH4Y5sIEFvQiJ04320oBrymWlJeTepQM5GldeOZwfZSbh00vGMq5t2JfX5MwefcKV7mwEHVyOvAwwbAPYIAx6KKPXHymbk8Ocexuq01nmgyhXkPBn1g/tklY5ItiYKJJe8L3XIz8dD+tUxSRzUdRp74hjpf951b4NqPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785564034; c=relaxed/simple;
	bh=nyF2kFUveyUvDgzTqVc8nmihCu4OIN5KeIaCwt6kNpw=;
	h=To:Subject:From:Message-Id:Date; b=pFRzFUArXX+e6dG1j/AiHpx9pOoC5yt40BvbuLYt2nxkJHotpOGxMDJk9kK6/DTsdHIL28NC1Q0LBPLECU71gxk9VClA9crGraY6T3MuPlZkYK9BZqTxTrWegxkPkhukJeJFyxn23iSpm9CYYskSKfC4Zc193TgQD2FimG7p5Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFTEVFoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFTEVFoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF400C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785564033;
	bh=nyF2kFUveyUvDgzTqVc8nmihCu4OIN5KeIaCwt6kNpw=;
	h=To:Subject:From:Date:From;
	b=rFTEVFoBLkrtfizmSZTZxDEc1dSc5DtVTVHJ9xRZ6bhFjzHj27qOGALusw5vLByEb
	 LcioSv6FnjvjTLX8RP/UptIoBRYDMNwafpwOZaUIg01+cA26XnqdgQiuPf5YY3LKB+
	 eEXDN0om6P2C7PZTb5V7NbU5+hO7vPg7lUVEQKUBLDo1DWN/GNaMmGZLKSQdGlKCwS
	 8/6fF/AOogRl3PMYbbkV2evdeolm436nXbhG8OyYpfS1va3QJxS+y4EiShfirxgtuo
	 qfltLGRooH7xVW6dygZa2BiVI6sADrTGzlJb+Q4HkbLEEn1WDKwi36C4MF+A5favqy
	 Yhr5cvcI6kcyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4C7C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556403373.27053.3393228521537998442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc8c495112afd633cd18200389089642a96878b1fc29256d2153df6d26d0b18
Date: Sat, 01 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785564033
