Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34816236A66
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744761594; cv=none; b=FIeEtAG6r+lyjZWmp/sjQGafUWBdwwBkWVTzlv1y1K7vbs7XaxX8BWrmOZitLb+BTWmfVoJEMP1Rv/gFXWH9fHIgMzjpt5e5cb10RKCKwgRyZkOSjKvLfg0wrOrIcyf46EqkLWiGZb93terEmU0+me5Biigumt/ydthBm5USeiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744761594; c=relaxed/simple;
	bh=xMv3QqOKYLs17wIJMyMHIFhspviG8FpTzC5nR5GUEMI=;
	h=To:Subject:From:Message-Id:Date; b=ajdLBXKCgu76Yew07yZkPR2Lv92Kl61mw5peeV8rXXE0YIbex7BwEIpL8OA7nDvNgQmOifBk9heekadBUxjkVdM8l9JM9iUMrZhNHXc9GN+WkhlakGQRWRtGDpkGT+TtJbde6wgsE7y2QXwntAJu0eUUOtmEyQmkBquqyCNPcoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYiSTjpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYiSTjpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B0AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744761593;
	bh=xMv3QqOKYLs17wIJMyMHIFhspviG8FpTzC5nR5GUEMI=;
	h=To:Subject:From:Date:From;
	b=rYiSTjpxOzzZ855gq15zePPKAy/+I2D4AXHEDxIgwm0SWkD+YdrBeXRE0Dlj0VuU/
	 AfDOfQtK1prpd2Kw9l2JNKOoVV+b8uscJ64ZgYA2YOWHxDKDwvJm2f8HDieOUPQIIJ
	 YOnbZMuXQsEk62TU04euFhIKXISt3KZ54gI6iw6qEX20j1dfGQ5t1momkYiEbkVnMt
	 N/uZRvTP9sIV5iZaoZVhbmM6VK3u+Cq+f5q9o9HqZRR85/uJcBQafWjKHWR2UuKMff
	 WYKNv1Yr4UK9/Eia8YsiNR98910/WCCCQ3jtONQmTLwxyxnmFBfgfjkF3GRkr09rJv
	 nLKT/VlBRxBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED0C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476159358.8762.18141340337882213965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa364435d36f23c279a7cc986af05f49eb5f8497e0d071d9aa97653d4123585e
Date: Tue, 15 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744761593
