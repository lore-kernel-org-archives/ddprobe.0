Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2463EE57D
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726508754; cv=none; b=GzsZmQeooS8FpEh3jp/5VE8od8Qc5dG2b/YQGE1eqRsgEBs5uWVuMom6E1eCfojltbd7fytXBcdZ5tEwuY5XwFjPehcZhS5O2gkJ4zRicw3wSUsAxvHOd776KJQlm7vk+DaNI5AClxczvQ1A709F8Zlz04hy1WtIzQHmXBPsqBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726508754; c=relaxed/simple;
	bh=rzFVCeYSu6BNjD6ccRotfcfVKV4+si3jvw1vI/VGStA=;
	h=To:Subject:From:Message-Id:Date; b=tViTcVqzCqLk4jw4GTaviBt/2DLD7MY7ghJ0gA1mPXHZx+6AIofjlteNjVy/Cmv7FLVOg9MMj4i042u+pF/qE+qYKUlffT4BIMGH4okl+bRr52jrJP6OSCQGxHSOsUPABw/oXn55RsdopLmv0qeb2CrEM/QW9Px7ojCMC47yLg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l90+gncv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l90+gncv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF29C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726508753;
	bh=rzFVCeYSu6BNjD6ccRotfcfVKV4+si3jvw1vI/VGStA=;
	h=To:Subject:From:Date:From;
	b=l90+gncv/eX/j/9fbKQUVZvNijmPKOWG2IbbvlcI1FDgjo6fCGJPGpQKCE4xoEyYo
	 egn5tFNHzz/Fxaot/5bPx/elTsCAUYH9PdmdxjnEa45Zq5yWKRVs1QryBG+mDJnCnr
	 k+yCbPevnCXqSAKUDohZwAIqZmcs7/e42Y/6iT6vISN/3SvwC8VujlS7xbXYQf1Y0P
	 Jo7hbOciFiOFEMfwneHnPB57rn0mLAbaeaAxfsXFjnbIfcuwyLFR2uA/SoQ9LxIrNC
	 VCrOwChSvTYgGWo6NsIO7Uxdb+Xm1720sYkM0/yYuuV6MxVzSURqVjzSKDZq4dfrYU
	 WdVmKsapKsWaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6C9C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172650875362.19433.2891302477601206310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e330cfa1c3313b570b9440c989233223c3421a24303688ab58797188f961d4
Date: Mon, 16 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726508753
