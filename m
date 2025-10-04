Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F8C14F70
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759595993; cv=none; b=IkHf1xnjURzgX8yx/wehQykM3r+76/FLz85da/gRq4aVptHZMZ4GsOamc61y7ui4H3KGABKBG54hd3b5PDiC62Ir0lgg5TFyy4c2GvCmiDIjZ7sIgxMSe1ClInCGL0WEMCak+cPnQu732HkyYmCSVAsDj+wj8yYksEvvkHz7gcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759595993; c=relaxed/simple;
	bh=Wi3mgEyOvG24FrActIrl7e1aORmSlE8+rqAaP+S2k2I=;
	h=To:Subject:From:Message-Id:Date; b=dluQKgXNSrX6BwshUjCM+I/oMMtoqzrR/y2R4XuDVT/4Rqug+jOopizGOUEF/xOdtoyGXJ0MipDigd7aMcGcb+fteZ6Dafm4+qmvOcQKXxyo9Im2GvL9MiA0JDEiWBNSZCmZbi4CzHxBx8I87ox/yfbbLfn2SURG0CXlSIwemQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHHuMpVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHHuMpVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E16AC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759595993;
	bh=Wi3mgEyOvG24FrActIrl7e1aORmSlE8+rqAaP+S2k2I=;
	h=To:Subject:From:Date:From;
	b=VHHuMpVHL4lGXpuRugzJ5QsJ1gfkj+B8M4kZOGZzLOKjRB3ITVPJHQ5uj3YK7pndI
	 qm9S55mspoiPaxN5MJHjuVhRmafxQRZ4deLNScVrBP4CRu+Y1oZy8h1QmkBrTWle0R
	 L5DDuI4MhmgkYC44W2KCZLgMKsRS3fIL8toIACBXb8HArOVfWFcWrshnSUAB0LDm0/
	 dQbEKajvBaX3C6fWeJnP/ar6JK+qRQ7OZbm1AjiobiSCg+IPg9npu/xEOU76dFnsMS
	 pkfyZkTM8+Pd7C0sMeIKvVBWd/2S1WnZd60jOYchnyVu2DcyBd9ucqlM3/6rGnE+yq
	 zS2KKUa+E1DqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90442CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959599358.3405.3030462517108124209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f471eaf0caf0ce2197ddf697ebb411f808fef48936654b9a5a94ae11078d9e25
Date: Sat, 04 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759595993
