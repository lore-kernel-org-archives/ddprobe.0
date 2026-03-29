Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDAF36EAB2
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774793694; cv=none; b=QS17K3LAX4vNK+69ptA7oVqD0GRF/2JB4OVjwgtXL/Y8cjnamsJSo4mN1sExvxr5l8n4yOfGjD4pl3J+bfUiEhxsHItswZaCQOi8YY4Qm4OIgb4u+Z393LkHW7j/JioywA/vFbiy78+YXrSCi+G4+ccRlQDXCfdWYmb26j85Ao8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774793694; c=relaxed/simple;
	bh=7IcP2WTEdHKT9UjP4jcrFa2gEJpZ0FY1Y6N5uNLjZys=;
	h=To:Subject:From:Message-Id:Date; b=CUct9sumPt5lJHzKYOKbf6BD8AKLeG1jUCBNpki17pvsI11lhZh7fcZi/xi9Sw1ZGCTfBIejuqRYaKHgVyYvOHy8uzB8mkt2+EPBKgTWnVbaXbhjO8ide3iDTMXeLMijHOOV1MzZK0BXGJfUPFgb9XrUH59gttSk0fI3xHcJmro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6cYbKxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6cYbKxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C44C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774793693;
	bh=7IcP2WTEdHKT9UjP4jcrFa2gEJpZ0FY1Y6N5uNLjZys=;
	h=To:Subject:From:Date:From;
	b=D6cYbKxf+KUCdzkslk7oqjVR8Rd75IwegS0ssNnJ3GtL1Q3YwlGIxldhpY7wc9ADC
	 mWW4Ps8LOZHUxl+6AbXqfy9wG8XZXKv4/kIGu2W3/xOaBX945yCOHYhkZ0yfJRBHZ5
	 fSfiWWH7h63rUb+wAT7jM5sAB0njOy5C6ZBBFeEQR1AfGyxNpB6wi6o5ItLo6X6UyK
	 y0f+UMOEahgoRhbDp1Ch8Mgdxh+6NhCkXyx5JP3QVR0GCHV1CPaSU+DLiqDIbjQlMY
	 2RFQAduf+O0YLgV8oIWqaEDhVmOwOJXOS3C6DHxrWY++RUOId4e3ewRBy6ZiSYEN4Y
	 mJTIvWlYfGG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93861F3D60E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479369359.16651.17412532546363370840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed327a9b04f88ede131bcd5fbe1f6fc270026ec292db53c55f40293d9ef9ade3
Date: Sun, 29 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774793693
