Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55617BA33
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738811754; cv=none; b=jftVGLbuBR3Mx3Lz8oYryiGbjF2izPRbNYEwqu9XpOQ+zFuuZ5Pk3T6Qc1duCFY6lke2BvxqfkbRK0y/qLCZeoCwtTKicdURp1AwL6ud7emVs3z/gVJ2/Cy0YRaOh8+ZjE8Do+vj5I0o8a9DcHMBrT7+Q0u9ixEjT3U13O8p068=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738811754; c=relaxed/simple;
	bh=FMSii91OPoMq5n03jQrQyEdmNychvXyD9OEe8/JU/MM=;
	h=To:Subject:From:Message-Id:Date; b=Mfi0hrJBPRLT8QjT7D9hwmFE/+opi/exCyGa0yvi/uBUNOG0zhmKaS7Sdw0W5RRX2qEZ4QG2d4rOqYAyK6lVzr+9eSEp2qB1HYScpc4Oqp77VlSoH8zvTfXA9OO1G7x/AkM3ganbEwC/0pdljcoZ0pk9BDMOkeCvCB7J/bSqrAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXhJPp1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXhJPp1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA66C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738811753;
	bh=FMSii91OPoMq5n03jQrQyEdmNychvXyD9OEe8/JU/MM=;
	h=To:Subject:From:Date:From;
	b=aXhJPp1lt9CQ5HQjpjf16qRk1hJANretXV9V5wcwstbCqxStsqb43OEKdU3HYRnUO
	 7Rvmo/KsvketbCz0CqiUAmqYRjml9l5+SpG+IoiDjK8qrH8LLO/ArynfNVJ3e52bz7
	 4M/3Vn4NvT/UBGVD9JXoORykSY7nwP94Pgkps8U1cACSAkONlJxtcbPhnOR8NhypiF
	 8SfzIIpvQrbm34RUZMVuJiYyqYlctU3+2z4Ufv1t5Nd7lpK+tnSuieRlnKjAg6f3WE
	 nG5JsTJCJzzqdsdw13WVugOSNewutPo32wxV2FwLtjPuVZJYOXgBv0XErBozCI76mH
	 mRS5mY6f2Ibng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996E2C02192
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881175362.4550.8452823010174302518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577ee256255405491425e8aa93baa8d0bdca926822d5e4ac275fe4d930aabc61
Date: Thu, 06 Feb 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738811753
