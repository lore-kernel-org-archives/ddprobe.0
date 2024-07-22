Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181841401B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721668554; cv=none; b=BnF094KfhWKm5K3tp7denLeTUpPQhUiYr2IYNdioZfQaMPdef8qQcz97sCZyJsZldFcCjHEprK7BeF10oCOi7d8WYUtU8lZr5oejbMpggBevf0OGGJTBtWzhPMfmM4Sb4u+Vpc4+7b37bfdkLXgdUxkZ6EoIz9OzieZiuOSQmvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721668554; c=relaxed/simple;
	bh=FdUwAoVMMAd9VqxoYvwSeAm6OlkUbINDRKA54+0ATcs=;
	h=To:Subject:From:Message-Id:Date; b=Z7GLvzaYZoApNuBWYS7TWujnHVweSFJDystQJGxu2az48fVxY+qJnMqQ12p8MpWAKGEQPDy3lZw9MgxEM91/mj3FsPaZRov9nnzxMxKc8IfbVYoOi6yEXEJqEva04u1ORS0O5alJzmNKiwMFm9tMYldVrWGgBz43av20ARK3rHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS0yf574; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS0yf574"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CEBC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721668553;
	bh=FdUwAoVMMAd9VqxoYvwSeAm6OlkUbINDRKA54+0ATcs=;
	h=To:Subject:From:Date:From;
	b=dS0yf574A3lR7B8aA1ZVYDKVNJewfM7DqhDNGTh8PWMYZmpKaKRj1wd7QfvtgX1o3
	 DlHlpz7FSIMeGXkFW6NP3weCvAuBxriBlZmjTpWHG9zOI5d+dqR0vXKQehpHJLdpfE
	 6mlTGepD09/8Yp9Qy+y4FdjNVGnwqg1i2kBGKNU+dw2cmSRcHwt3FBR1MXd8sCON3Y
	 bg3wancqIt2sgCLXgKWM8ho1s1/I6LyMswnX0H+ohhWGQ/vl5XZt0C1+3NvZyFq6K5
	 TQvio1R1Mw8UYZ7F2/UkAVo+R/IHdkse3sqA+V0HK6SnxThUuCGFCJxui5cSyz+3dq
	 nZ6e7j6yy9/Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E17C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166855361.24267.3958175713528818959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd71dc1190227c9e6f7d0581e476efda63dc0b79be114c98e3565e97d6651dfb
Date: Mon, 22 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721668553
