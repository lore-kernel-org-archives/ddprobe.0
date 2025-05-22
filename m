Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF091854
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747891794; cv=none; b=aHJlz2iEAbygdFDS/L6oiNGfPKugQP4/Iu5KOokgxJUhGEOqC0BQOJnHGgzJ4nnk5T4AZ9HG7CJw1bqkdyzzcm9iv8sjfcANd6QFCXOSxad3+owJwgbW4RGfkPYvzcaUdrZEL6N3DNJReuqylMEWaLi8nUuL+1wCoFD7dRknbYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747891794; c=relaxed/simple;
	bh=XLsUTcCTo2tZRuaZifV/k5WQirmUfFOlX8PkZq47yaw=;
	h=To:Subject:From:Message-Id:Date; b=Nrry3eHI+2tN8NjwIRbiEkw0ylF0wUd0bx4N57WhxK1MnK6jXX8XJxo6T2C1SnYmyJhDWHwok4bY5LndF7wmgtkQS0FGodaRGekkspMcbnQ1a0CZ0uDb3xFT2+19z6Nkkjtkt0CtoN1Nq9y9wMbjf1+gW73dkSKxvqE1Ro7iS+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ce4XH0NG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce4XH0NG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F586C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747891793;
	bh=XLsUTcCTo2tZRuaZifV/k5WQirmUfFOlX8PkZq47yaw=;
	h=To:Subject:From:Date:From;
	b=Ce4XH0NG3Bz4J6FvJDiRG2WGmUMNZi0EXcrmRCczPNnp3EWXRgPp1BFsVPubcouwa
	 h66eoaTEV7ZATO7eLCDPfRV/AytF7wxPnTIP60AuuQsza+gohtJ0Ehc5K7oLbKaewQ
	 Xoo9K98C+Bh4/aDBvbLI2/etBNKOjVh1i2r6T8SY1b5TLPRmIKVYXc+9dvRNnkh61h
	 t8WyM45xOiamrcplrJqq5U5073hmlQKK3igHGtZcBrxxVsgvCeBOlW+MXZ3ORcJqgd
	 x3KB5iKCwict2nytg2STaKesgY+KKdBj0xVrFHHTj00+6i062+yu/lEiJjqAgjsqQi
	 7vr+SHf8jxLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A2C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789179358.13176.17701224687157163207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6358cb03f2e637f7cecece6fffd8629a3073fd485a397d90943e7052b8073999
Date: Thu, 22 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747891793
