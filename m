Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCD58632B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750448394; cv=none; b=c/QPYzfDphIYTw0559mKCFeYD3F1/Q/bgYxzzA9eqqtwfcbTw8GFn6/Js8NYSB7PW5m00Y7Ig0MohpbxLXuVIvzEr0ptuEecB2d5DfkchZmoq5RdCpvCzT/6/NonIEZQn8J8g5+P/1nq25AwpGb7HxvvL/+U9eBdhyDr3stwFlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750448394; c=relaxed/simple;
	bh=rKUfEzFyY4SE0clW1OxxAmgJ+lXrIaFdXhredAd62+A=;
	h=To:Subject:From:Message-Id:Date; b=Wag6ljPdJqGm/Lm9arpnXpxmI9cdolckmt/gCcGEpSboJKnGaTVdyXq7TY03BYisV2dOuB3sZwAcvO5paGYOuR4AcY17wxPHd3EoQ3VsBUdI6iaw/2bz54QX+7PKMMdcvj0UfEn61X84cjRPW9octLgkLzO3mBt+N3fviEwubNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URJMEHSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URJMEHSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E86BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750448393;
	bh=rKUfEzFyY4SE0clW1OxxAmgJ+lXrIaFdXhredAd62+A=;
	h=To:Subject:From:Date:From;
	b=URJMEHSwnD1/D0OET+T2yuPQHWfK8HfITxONBjYtzIvOCAg1WkgBc+ii1elwKVAi9
	 eloP0b8r10edXruewZhn30SnlUCqPPA+X/lV5sauNJaA47Lf7y+CLCcW/AlqYO1Fye
	 ucSKuxKNlkT5m8Wj1AthUH74pqdWwXL8PvlnDMsaeG2NH44y/bbt9jJorzNu0qeUyf
	 m+tLbL167CYbOmBKlxOwwxfNlqKu5s9Dx5x++WMkimUMdwcZ4S0Seu/ZB8bPCf2exZ
	 0lMmxk32EjS5X43bTeH+C6mkg3KZYvzEme7M4wg8Xn6GNQTcnmdAkKL8tFn/lSe2Oz
	 jVVgpTwXLc4aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A0C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044839357.9849.13954372877429257893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51bec04e5e15e2cab40b83456d492bce08b18870cc93a9a47a00356fd71b8b90
Date: Fri, 20 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750448393
