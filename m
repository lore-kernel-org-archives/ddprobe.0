Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C0222C6EC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733567754; cv=none; b=c265+xJL8eg+F600dcsN6xq2r1Hah3Krig1OSaeLCU5Elq1K5XD0JEIFzq6c3+IYAfmYwYjETejQKhFkkc+H4/3nGejnLca3odTze3jN3yZMPRpzUtkOoZzxYNy4lwYTcBLe96dT1E8i+aQ5TV94Z4eRjnliCxqsWIbkiNgQ/Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733567754; c=relaxed/simple;
	bh=VXa4FLgBh/5Z7Zaco0s6kEPiSxwl+IHvr9NfXL0Ccf4=;
	h=To:Subject:From:Message-Id:Date; b=koHOW4S9hPwu36tXMcz4VuLgW+XPKEMzCmiTp6QJDMD7JQRrHfA2LvdfUDSS+RZDlpS/xjpPC3ViXqVYTjOCBlVltINs8Z8e+CWgI5jqYcNaLe4Htr2xehj7sD22DGZveL48NmFEKnGW3yY/caruVQMPAwvFGv3w4iUfq/l21hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cif6m03G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cif6m03G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7103C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733567753;
	bh=VXa4FLgBh/5Z7Zaco0s6kEPiSxwl+IHvr9NfXL0Ccf4=;
	h=To:Subject:From:Date:From;
	b=Cif6m03GB+y36PyZT3aaJvDh6lE2TfqQ3hUDKJDetSnCBetNGtw0kmMJVxPta0pyT
	 OFsPVEL7ThtSELAg031DGnCSTMNd/RlUAF/C/u3l3xOLtkYvEnL9A9aH9/U4gun6Up
	 xXPvMv8zGbP7LhjIz4vouKtLvy90BSRL6ikjHretW0WRddZHOZagnnY1ZGUfQuHrG2
	 kY+z1VR5cs6HU12E/s7/SXtzen6GH+GlNSur3Grx1b2BX9sZe4NxwIc6I777/VAMHv
	 kTsdkBrrLSLXlu6gngn5TXiASSgqpS/Idf+341J881garT20iMB2BvONgAiXb4p0N8
	 XNdljfwsVnGVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96465E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356775360.627.261143408373176810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e5ce8251bf6db72c08e6dda26b72f9dd517197d01ba8124936927d092134ad
Date: Sat, 07 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733567753
