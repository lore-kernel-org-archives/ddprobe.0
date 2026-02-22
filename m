Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3E3F9C0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771727094; cv=none; b=N+klezvtpYUWEWZenyPPwJZ5HaOIUu2o9sr1Cl6RKUqT8aYEAKVjGovW4e7XcJa07UTwfY58Gew/m3VQR1mQ7BCOYnk06+XFnnj0fLCJUf9/2w1CCCXy3nw1WMGnUslqs9JUJblPM8xriOnJUPa58lN7ixoLQ9xHAES0qutFjnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771727094; c=relaxed/simple;
	bh=dOzvMrhitzw3HQULCdJF0BREVHx8Ln6r74IzrJ8TiGs=;
	h=To:Subject:From:Message-Id:Date; b=Pe6wqNWjCZ/c5KcL/GPGl7XqfGyNNij8yt8bT+iVs5UfBHTK2KVVXbvCc5qtp7eVqfPoJc1HAqyUu4X86P7WkXG7CUE5ZLHwAUUFxCz8DuWdZ8anRsQPoec4bsSIOMm3yiLD54YXv9iaqaxg9S932exlzI2EbjlRZI2xHnU2pcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVkhOHok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVkhOHok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC9BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771727093;
	bh=dOzvMrhitzw3HQULCdJF0BREVHx8Ln6r74IzrJ8TiGs=;
	h=To:Subject:From:Date:From;
	b=nVkhOHokrWQijkJmS0ULd1ts0fLoi7wrrNwMp4kR2gxHV6OOsci1WmwMwC3Z6OgbE
	 a4aEiLAoT0rfo2e2LwFIKYQm0GOh/SlHgT/o5V85bTjk3ioEMupOQCFFy2B0gLTjYN
	 kWXIb0pqI6M498BMRs0Hp133JfK0JOCEf9MwddcfCD3vF1tGtDb15P/h+yhpPNRYxY
	 tpg6GDRAaVEzxXmYYnQzC7Oxw2SU/msH7RPykmlcVanvFGYQ0XzoFh0hPWIE9tGBYO
	 G/UqVPXsPRPysOk6jGJS4fPTILFDHzRWoYMg5FQXSYXOF+g9RiQm2wYOoQThCJ01KP
	 9W55oYyQAUlvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538AC61DF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172709358.15559.6505703453539955984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563e71e2a384dab847867219da15b3de875c0a2a73bfc21e159203b03e127590
Date: Sun, 22 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771727093
