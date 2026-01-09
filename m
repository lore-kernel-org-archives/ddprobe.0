Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1833B28750B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767966834; cv=none; b=dA98kF8BgtkvZImR3Tz8SlUBkytOm1lVO/5VjhCtVAnMhikGd5AjWGW8LNjIZj1W9K5IhW9m16AFk21JqTdGTYBBLQhCFfeqYIA1QXqBGEaMaduwkLTbOGIC1o6z0KpicuVoqfh+wP6r3yW59B2rHDlRzRuxoIlw/xiJf/6uVlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767966834; c=relaxed/simple;
	bh=70MKKxn8Kx/F0ZXZY1COK485MlYwM9/y7TmBzK8ca5I=;
	h=To:Subject:From:Message-Id:Date; b=idAziUX5LXuHGaycNnkOpdwhJ68oS3lY7v9wq9I+ty476lKXYtRun+xQZM6tl1k25ALfGBrqWA0nBqVI6B1ncDC4xfEn7bPZfwekDawfwwYqc/MOLU7tPo3+ZE0iRBoq4DEBXBX0OJjjmUxGbSYiuJgN6moEMX2kXnjCvV6qJtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDQ5Y0kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDQ5Y0kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D518C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767966833;
	bh=70MKKxn8Kx/F0ZXZY1COK485MlYwM9/y7TmBzK8ca5I=;
	h=To:Subject:From:Date:From;
	b=uDQ5Y0ktEexg6Z1QmQI1dYc/Vqa2DlSs4py4zOMYegSGb038g/+KzEuDXGMUUj3LZ
	 rXg6K6EJNTZq6naKFM2ibHfykJhTHwxzkIzswOf0bZMutV3raDYs78fSLx6+UUCPuz
	 dL7llGTFJR1hi5Yk78mBR3ZVL5Xfvcqde8YcCLYE3mI0C0oBujdyFK6G6oATW/Bpcw
	 rmjgBti8L6yFBLuHCogbW0X3G7xEdaiM2gYmlo1S9kvhPtvW8xLb4AC7+sVqFAi9Bi
	 TjigN80Lbx1et4rId+EHGVKFEK1jE6n24RNltnc9EefP8GYZ46hnVqqepd+aVz4DXK
	 YiKL16ow4Gjug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5ABD1A623
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796683357.23234.2027854192150009799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4661079015ea8f9e9e69431489f264043af75aae11ad62409a9fe4e15e496d
Date: Fri, 09 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767966833
