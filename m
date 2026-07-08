Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89703E7BBB
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783495714; cv=none; b=NI12gTMdRCrTO+/xg0sTC75XLn8jv93ADqGWdfRkjgXY4VYOIs6iO2b/Gyp1kyKPZg6PUpTHPQCs4m8YXHPwLwm8AjfFVrXU5uKxxKTi+nxaZrhqzb3FWLOQISAlQTmxB5eLTzv3Mcgd0rpOzDvlDTVYtWzVcH+9cEzBdxFvwDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783495714; c=relaxed/simple;
	bh=QCtC2QRi9Czct82LIBvlupmc5ohY3vS1ou6HV5IOEP0=;
	h=To:Subject:From:Message-Id:Date; b=ELYSXaeFRSoHoaf9pxNRXtPWXHHmhidHr/BE19k1iDp3YxH+M9Vd3bbNxhJg9bCukMm6WmDDnxNprbicPk1EHIxF8QLX3q+BnOgP+/REiPf9i9LiGClz4RMWylTB6qwJKkiZsoXcmiyc8Kzt9g4S9/8fHuyxf2ZPcZ7H+9zoVRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHJhuCPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHJhuCPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBC8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783495713;
	bh=QCtC2QRi9Czct82LIBvlupmc5ohY3vS1ou6HV5IOEP0=;
	h=To:Subject:From:Date:From;
	b=JHJhuCPP/qPlmwlqtq7FAFZ57sGtrxrjpNdUHCI8HtdqOnHZTecc/oIguWtfZfVJ8
	 +o7pljHhjRgueXgqqPlRWhYi9KBJKCi2/vc4qHp92IgDmkD5FnR5pnfh4HpPdemmYg
	 3AHfp+iy9BGMtVCYY9zPRuDkvb8frvKYdI2utbqKYK0xBakHNfjprxcPDab9T/Fx5l
	 VFxcuYtYlwKDQ0nYVFomINwy6XDhgvP4zK6ZvFpBtluPWldLrH30p47tUbk3nExKi3
	 9E5Cm6dc4EXg+eOvitcSXiwzHMQVygvCksPlfG5TTDHO7Poj+sq9zXKxvl7IDsvgZn
	 irSHz9Y6vwd7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC45BC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349571369.7266.10977802643985202129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1001b422286e30cd4c245b0500e9c1e09f88c5e6fec14cd9a473f17a9a7f5a6
Date: Wed, 08 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783495713
