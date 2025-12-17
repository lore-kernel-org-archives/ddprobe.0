Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A2B3431F5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765956834; cv=none; b=o5c9BUdJ+dIVBOCIkWpAFOvU5e3qzqNfVO89OMY4wQ7MmsKR01HngmPsNEMkkIqoqpSpv00+sJhNZJqJ/JEPqxJgQhNdZ16O4TdggXP7GsPSqi0sWqGdm3JLS8hVq0imPBR/MsF2xMPPFk0dYnkLf5Yksd4TEt0N9mZJje2KkEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765956834; c=relaxed/simple;
	bh=daPOQVq95a7ZEQ1WSXAHH0oSJGxMxD9s25kyzNF1oa8=;
	h=To:Subject:From:Message-Id:Date; b=QUrOFW9kqJ3sHzDh4IOnZ4RDnsEuE/gOoU916MrQyQxjv7OotY0z30WLl765oZc1Qo6dbglsJkgAoNdj9NDtC4GZy35xXcriq1G+peYOoyS1DilwIEjZnrbef/DycdhsUBiZYArPa4SN3ZQ0sC/XgqA/Xb1wctsPm1rv5iCuV+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5rOdxbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5rOdxbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BE2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765956833;
	bh=daPOQVq95a7ZEQ1WSXAHH0oSJGxMxD9s25kyzNF1oa8=;
	h=To:Subject:From:Date:From;
	b=Q5rOdxbZicjvRAaqTzR6Kt3rCuylqCfLBYtDhmnTsCFI4oKZxaVOdDawR1p8UGHRC
	 rOA50bYpWcUNEQFHCpM13EH3v0rMb2q8W4knj13ok8RJqM0kE7BTQRY80rkUfvOIwP
	 3J+7qTreJpQIXy7iz2mOS3ok7OcOeuGueBYm2a6DhwVOTKyJXfgYaBd3g2pNYiKZvk
	 ap6oUrWdSvnluzQx2ryBtPVqboaVWy+ARiYGAzS3OlgbdM94ptLeS13Gu4ckndEHdQ
	 +KQHIye2SiSwMf9pYVsEXss1LC2OGuEEOzfFojC9H+PFdYrAvskrcUKPWmYhGKNhsa
	 HJ/XVdBh2c8cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F16CD64085
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595683363.8394.5583065426094941328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4845a94d9dbddbf513d4c52df3483d91ed857f4e25ed26de704844f566723ad1
Date: Wed, 17 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765956833
