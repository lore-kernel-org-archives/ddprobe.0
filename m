Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3B71DFF0
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719288203; cv=none; b=vBa9JLVqaFMsO+7YWykWtRQ3SpNsIUAwt0IezUACMvHxiXkTc9XBfYmetSZXBn+YPb6+stiCrY9bh0UmHIRGzEs5XK86SsoQJBiJfPZyXG6Aw1R2YlEMdlFEOVGEXpzoBvGo7Q4YZjiG4eays2w63hbgZsyOZstwCook5Dif6Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719288203; c=relaxed/simple;
	bh=2grRVmpdMsNRG8cwGCufWY22iPS9KkxQcHJDF0foIfQ=;
	h=To:Subject:From:Message-Id:Date; b=uaJDCdQDbDsSDh2+HNYRUuIU68OCAckRT0v4N9m4r6jUUNeITsD6WOxFQckRNVTlVg3ejhjBBwW8GS6FFO8VAVh21HUeB4gAPlFDEWsSfxXwhQD5l2ZTJfTGC3bI3fEw8ZNBayhHuMFLdA6DY15R4wCJZTvnr57LwaeOkmmt7Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fj+Z4QWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fj+Z4QWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B96C32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719288203;
	bh=2grRVmpdMsNRG8cwGCufWY22iPS9KkxQcHJDF0foIfQ=;
	h=To:Subject:From:Date:From;
	b=Fj+Z4QWAozOL8qF3e+XexWs86De5RpDWRuiZ/Uv9dvIeDma7xI5TJvtjL+Sps0H/9
	 NtVNckgiF6oP6/15thilyrQZfo/0YkgV5d8d+A+njdhZ+Q8pOAhZTqyS4NSjrwifIp
	 9TsEMew4qIy5vmKQxtdmxnrv+6NHYdFvIpkXBdR3xDOMWdILgQJMd5KDcmJXOCX1Gx
	 J7HpKbMKEHMRXACYD1x6SzUsWDJSaCIt6sIbvWFP4WkfQxLaGOs2fw83NoRhZ1p3oj
	 mh5Tf1p4NASTMFzSU1RYFpnNEgH8HYxjssREhSfoQ3osWy0OuWX1YnztRCksTVmxRs
	 bxAaoq3N0ajpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9FACC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928820284.2681.12352302341144471169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c519f11baf746018344ab5b5b642740709df831a8e875c07ae25ea11bb1aee94
Date: Tue, 25 Jun 2024 04:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719288202
