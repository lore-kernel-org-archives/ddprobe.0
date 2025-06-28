Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232D0194C96
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751098794; cv=none; b=T0XYiZE2xRgwvVjsPCWYF7aAihoS3QDwpsXaQyWLSS5djwLjxUXB0Rv3kIhUn4ON8OSFAke7diTSxmdWH1ZFUcvzzoZIBGot9+zG86tkQoiaHcDgJA36oYVdT8q2NvCxRM7Ux3kryoXbcYWdGJB8+qaKXSDePGjmoCEvgNa4wMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751098794; c=relaxed/simple;
	bh=MwefX8LJGgay3awPHDNVPhWCPaF56zba8YFxCJuGAYQ=;
	h=To:Subject:From:Message-Id:Date; b=fNZHN5WTCHxaONUjfhivfGm394w7D1Qh9frYJvpveqS6eFa6QngDgM5BwyBLj1JnmRwk3FIezJI/aGxwh84xwiNI9ItafRp3ZKYFQd1HLedr8yoIUxpS9L2PwCzI0Rfvc0VomZwOV8E48IszyBE31gx0nUnpGR1+XbOq5ZAKWlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDisiYXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDisiYXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD817C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751098793;
	bh=MwefX8LJGgay3awPHDNVPhWCPaF56zba8YFxCJuGAYQ=;
	h=To:Subject:From:Date:From;
	b=UDisiYXQLBFDxNirFHv0BeQEPgykfck2+Pq3ErYMwW1TXPppwscrwvktwY8HpdICu
	 wi7H0lQ3ClKoDCnQLeOTj+Ci5l8kK3WMxrwknTpoGbXLNdyINn1HEYyF6OhXa21rOY
	 Qr/hdOCr1ealNAmx9mVK7JHQR3EpBD5n+iHsI69yYa0ov9jk2qeTiXYqSSoZe7rx6a
	 bWQZVqKU0QJBJG/TBbRKUJFV6VqtL6xG23K9T2NbZOg5qkaSnfArfyS+jTJoXQsOY+
	 JdLpGD1UKoTw8qUjZk1QAum1PdkJvGRbE63fkcOKi3NZ9gjqE3zn41VyjRB0o9tNIy
	 ibUk/E0fVTkjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9812CC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109879359.27062.8284221149241121054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f655e7330e6d8f8fe427bd45adf932d8cee0282fb74b53bc390f5aac34f433f
Date: Sat, 28 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751098793
