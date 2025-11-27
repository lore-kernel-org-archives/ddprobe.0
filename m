Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6DB1E1A17
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764209574; cv=none; b=FeC2fIRleP2cYsZ88P7+WDHqHsnF7xnMMsuQPwzivmoBNegltAE8Hp4LemTPHG8W2/bhuC2NRZMbiSPP+L93PpyyXghA/1IHOWA9OTjYOHmTS2dvMnFDDXb2V/BP1ctYdXhSrkHuP+xSWtf975samqj9p7AkxKWhuVlVyWXLpLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764209574; c=relaxed/simple;
	bh=7XtphwIjCI5DQkrdpYGKScIzKJSbsCEqv7bPEDcToUw=;
	h=To:Subject:From:Message-Id:Date; b=AUJwz8O63sd9ERyo521ZOVV5mzzrF/pWo1sl8bSw9k/Wk75vUFIW4m7x6PXKqdMAsWEYa0Y/ljr0GG0qs4UpclDV1jvMpGWysrC/eHS5PpadlHok9MkOdjadmNBEMtWCEHO+MH+VNTOWXdL0anofazA8CsyYTtj+x1jKzSOvXCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZK0vlSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZK0vlSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0E7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764209573;
	bh=7XtphwIjCI5DQkrdpYGKScIzKJSbsCEqv7bPEDcToUw=;
	h=To:Subject:From:Date:From;
	b=VZK0vlSi9vs27tnSI1ejT8c1iZC+OSsxmfzkr9yN8O2WkGgK7ZTH5/MvwqM8O+iW+
	 uQYqA4ViHcVPcMmcuqsY7JGy5zRLA2BGiPvYLdFgEgRDEnvIUm9hbs3Tf7IZ5FnS6y
	 G1F+awS49Ua+1NxyEoj7K984TfVjqyimy7dn1MjTs1hTYoZszPkNB9xKvh0zImoJ9S
	 FqETjb1bNxExW2RMiCgfWMx7Nbs1LvYuzv2ZMBMA4+t0etE0hWvhTnb6+ypHQUZORr
	 y4F92rGdlAlL7yGslw1MBrjnPfH/ULJMpprz8i+aypuwbNGTkToPFKDApDu6m9ZMpa
	 3w/UgiWg2k++Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A4ED116E4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420957359.21265.10512267264945727538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48e169e4371b43f24c71b249ddfaff8401714036e78060aa9ed6327dd07bd09
Date: Thu, 27 Nov 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764209573
