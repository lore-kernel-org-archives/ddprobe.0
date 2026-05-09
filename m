Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3251DA23
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778325454; cv=none; b=GSvN8DhAwP9C3Yr9O9kgJPgRe5OUlEmsFQz7lSoOIf8eDUDXmp8Nu27ax/XeV3qLa3lp7NY6OHuJ4CpLCYjRvqLmchhkJ/ZCZTCmVPbeZCjZONX/4hah1ObPCW9HZnKWcxzW3+SFuopmTsIjP4JELFxM7WYUk6vincKHcguQ06M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778325454; c=relaxed/simple;
	bh=3hXWxN8YJSf77uU9OULqrYJ5qXSTGQwV6mCCN9N18c4=;
	h=To:Subject:From:Message-Id:Date; b=QhRQlE2/WLCp2r/v06Jc5l1eZGcGfedIN2owok3A5/OQeh0zyaDGfFyy10w5e8Bicq8WDSggrl2XDHXf4qd9OV+0qK1qM2ha+nRB/EX9uhW4D6XGEjIgLGuGEkz8nW6agWMp7yUJvfrLGJAeXfPiHAGZbtqsWklLNWqN8UEyasA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klHqUKG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klHqUKG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6055EC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778325454;
	bh=3hXWxN8YJSf77uU9OULqrYJ5qXSTGQwV6mCCN9N18c4=;
	h=To:Subject:From:Date:From;
	b=klHqUKG2YlS4V2ClAV0dTgPfP88LQAj7h2HgDGmDA086OjEIR7y/GGe9d1DiqX2Mp
	 a2iOjIH5FRkGeG4whg0GrhijmFHF6FqbpRBR8WmQC/fu+WwQ/JxhDvEFzRpfqeW+XO
	 2OfkfRkwnJuVwnVxIPXIKIWKGypffrzwXW5SAmBIgnkgyUKQSKinkGLxif4dqaDuKK
	 Zl/nXzAzlGzw+YXRCQ4G0utcTmd/uTviV5UPpvPcik4FVLBZwj2yau4akDV0JaBZIF
	 sFEqnhtszIUfoHZwlk7BAasmsSh8IdiCzcMOcqSYW9KcZLYEt41Y2gcEkc8FgA2zj6
	 jeGjiYuOChgBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16C92CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:17:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832545394.17569.3360776491594990741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896757a49c564c5fa54402201173e58a08b4bedf3fb235da5bbf0c4932498a9f
Date: Sat, 09 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778325453
