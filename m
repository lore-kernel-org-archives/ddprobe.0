Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE6F23A9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737409554; cv=none; b=F63dXlzGb1QCgTSa3pKEdfQxjJdGb5gobdifVZE4RLQYs8dZ/Zd7IawfpTxMewH4qJNzrcsatae7AaQ1a3R5DNBOZpADl1gWetEVX/rdcVq2xyQ9W+TlbrIQD5W4pvzsYhIpluKQjTezyX/RzTO9PYRwKhGcjXm5wQfQVmEF7p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737409554; c=relaxed/simple;
	bh=96WHYFzbJ+EeBqTnVR6XaiZ+GnRKoLRTltMANX97C8E=;
	h=To:Subject:From:Message-Id:Date; b=eFoOCGERDMP+QsZzuF2snP4nU+R1xTd46gx684YbFshSduFFpi6ywycZpWpsgsO7XjC3JMhDwTeboRuPvu2uE7PoG5F8dC5xDooA1QX3mKh4Tl1zkDBxccrD7Rwn3Jvtnx8S4wTg/XWwrcYnbI8D85dYjvQjYu0Aw9WS9Bmyb+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB5K6Z/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB5K6Z/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF342C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737409553;
	bh=96WHYFzbJ+EeBqTnVR6XaiZ+GnRKoLRTltMANX97C8E=;
	h=To:Subject:From:Date:From;
	b=OB5K6Z/mD+DN6Gve2a1OqLZH/wi2fUMFW0/LSLq3g2EmyXHhNybgZOoBrtBg6kKo8
	 zBUHNbCrg+DHsv+49/oRh2hSjU7Q8zBkpUl55R5IpQukncQaU4W/9vOC5Piy/vrmtv
	 cpSy5RYBF061mJQ/NEgpqe1aLfMAk8cFosTRTjH8fAYbB5WwPTu4CAv2us/BWIkeVm
	 C6S0OzBRMtfREikBQZcDetjoBDViHUbdve7nhK0F6GqH45qx/mX+CjdvhcyQNKxDNI
	 dDkQZW1aLZl+ub7joXqMBfqQUkdlGiaBlRLuq8TYEB8y2gH2EdZDS5v1kCqTJKzBYv
	 WpGf8LnqPnFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990DAC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173740955359.27282.18335835288460531666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5de27d186b03963eebff531153759e9eb6f745785dcf3393a2edb554105b24
Date: Mon, 20 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737409553
