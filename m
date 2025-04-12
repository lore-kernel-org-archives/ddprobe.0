Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37044192D77
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744452594; cv=none; b=ucK4hHPXZD3/dB5DaYVnaCn0yZBreCvDlxIkm9sWG0902ifH3hAl6OwD0DKxg8CbzvQ0Ov5daOmMDO20SEf56Goo7QUrhNm+m9dt/JkbDrA2IUlmybIPFEa+AtNmSTUCKnByRXQvSvJXemHYN3fFEmKcJZz47DnEl9WLxlBHMYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744452594; c=relaxed/simple;
	bh=W9VhKLNv6D+OKMxjZlrd1wgapkGeQsIAwe20IhrQp1E=;
	h=To:Subject:From:Message-Id:Date; b=sOe/7kYguk5VD7m6Q7ZYF+8YdkMkonRa8LUHt+wQuNw8VXTlBSp3Wof2FNFQy0GfwmFF5PmKx/4bva7UPEiCcsDinuUgWz78scBs+e4x5ebjjo4Ft7DTlFslK5DRCQ29K6HTJ7Mqb69+WGymWIaTE9tg/Ru8GaNZ/KzIpCUFeaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsziayiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsziayiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE902C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744452593;
	bh=W9VhKLNv6D+OKMxjZlrd1wgapkGeQsIAwe20IhrQp1E=;
	h=To:Subject:From:Date:From;
	b=SsziayiUbP6SAp6FwMXhl9IEFb1LM35C/Pp6aqgqrS3Gp/JvC9NQzQIF0cj2O8lDD
	 3mswU74XrRZ4lLcY03XaX7GkeM5SdN3f61UKgLirjdg9HpO6uU0UGzefI7zZwNWNeP
	 Wsfb+IYA/sHT/U8dzHTB7pkDyUCjOQtUetgMRcrCbrOzJ/Zlmv95A5+CHQLWrJqE7l
	 2KLZkIIbm3DOjslc95lhCy8A7nHazxWg5gGYd6be55ufZp5WfKU4rNh0V1r8sQy01m
	 0V0wIsb1MWPxDRcOcQMp4rx5XOT0V9zN2LhVtYBVC1Kr+Ow+nKeTD0cSTM/98Ib9Jh
	 10Ei4nQFkFO3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96464C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445259358.417.2276828760733730527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ffd4aff91934d08ef51f3d28e5092230327cf8b686d7bbbeaca584dff879da
Date: Sat, 12 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744452593
