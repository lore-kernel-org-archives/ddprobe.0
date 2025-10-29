Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A2020B81B
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761719394; cv=none; b=gY4Ctcds8gVTD5qFIaHi2PrduI+gxy3DUf/YeWMcdpFbfM798ykAAoxW5LZP81HUubSZXZ3P7QIgE+v357QRExHWmtZ2hLbxz7yNZHLTTGgnOQh7RA1L53dqY/Rqy8uoOGHYXZL/hFM/SuwjmcSp+j8sWvMYsMzcLPaFVFt+VOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761719394; c=relaxed/simple;
	bh=SKCGP1L42Hveav+5kTFJsC2KilwkMXNhWpTj2jsHwBw=;
	h=To:Subject:From:Message-Id:Date; b=jwomEI9ysubiuz2ptiukS0TUihUybrDoC+V1Ho726rTJqeu3k08M+jvfU6k+jvZzg9AGtaqNq2INChZrrjJAYLXXJUfd+ZNOkQTvEemLkga9Z6+v12olYfUR024x6EbgoHv/JAMHbYxe0HzINeAZRq/8FomRU0Cr8+aHD7i+nwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjgsN0Nb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjgsN0Nb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EA2C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761719393;
	bh=SKCGP1L42Hveav+5kTFJsC2KilwkMXNhWpTj2jsHwBw=;
	h=To:Subject:From:Date:From;
	b=SjgsN0Nb4/itQ+zY1DKEMRoJf1sJAFQj4huK6ko4OwZ4XDg57Q5FSnlM1d9k2awSO
	 JDYZyJDBkjqSwyFqfmABIoC9k/zFR/NFRPzvqaLCAiHgX3JdJFrSn/DuOIaMIrpeBt
	 O3Z6P0ao8WmN7UmdgBWwWHbEQRs3Z1/uQAdEl9Ia4RW+KvMt/BcQuhC6EURDxYyePd
	 HbdFLJbwtwL4PmeKPWuUAxHmXiWJMX0k0ltDFDqHBPw73exQew3X0Y7mzqdv5/Yl+k
	 oMTYpOrQFCzavQNDo8TWXSBbKflQntXlTnbWCn+B3EpRY289gx2WBZxv+wzSuWY7Uq
	 jd+zR6Uf0TW3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B00CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171939369.2703.2247570275206298510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4753fb406bc52569ec614401f7a044dfbdfd475e3834ae446ef3487e26a770
Date: Wed, 29 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761719393
