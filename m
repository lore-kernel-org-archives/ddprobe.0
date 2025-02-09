Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06B91DF991
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739129154; cv=none; b=uiXLclH7znVNlPX0QdDxx8jrGrDZkxUN3xSNwDkyxchzuIhuPZpT1bSuh1kkNAlEL2IZZb3dijxT/qkj0XwhKDBglJBVkP9Wm77kgK9+B1/MYss/XGqAGmH3WlJ8WUoyfS/4+Isz3pAGoOToJUfMBt0pO1mfy6ePffRE5KzIK+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739129154; c=relaxed/simple;
	bh=qrSNGfpCNmbBwK4p5WEEEuJPgFxx8CVhhbTCcMBsx4E=;
	h=To:Subject:From:Message-Id:Date; b=spyWq2zSbilvz0g/1qpzYIyMQk6yzyMr5B7J99UNrLp4uUDbLgpMdED1WSW9RamZFk8EHdZYvybhghRFCO/+Mg1qgV/Jjd7HpWnYQO95a/aFMWR958fxUzAt0I884Rjlc6cLa0Yuw5PNRBrDjDG3Enmvq3wudkn/e9acHgxJbYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhitAPyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhitAPyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 322E3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739129154;
	bh=qrSNGfpCNmbBwK4p5WEEEuJPgFxx8CVhhbTCcMBsx4E=;
	h=To:Subject:From:Date:From;
	b=PhitAPyulU4Daf0L7uuATsFxGgSNkY+QRdlyWBfvR8+Gjj5UPuJamto9mF5lJ6YcW
	 +d/L7dCHuoEoADmxcjUeoNvUJWV63CEso7QeNZLG0LTh2IC73K+QKcxN0IpZHZ5cd8
	 w87Vs55LHGeFxjt351e1vIEdlr+iPfRkEENE/Dv4f2NFC4gmskITzKGNOteVpd7Q+l
	 w47fNTTSqeIaUcYWVNzVf7iKfmeD9Oc6+QBHK5ArKDmJ8HRpfT+uuX9hDucVWqH5xW
	 UtZnSAFWFs790v//ey5Nd+ZQgoVRRgYH5rEdudMVfjsRnRVtNm25gjnZHUHj6UDYUE
	 gcpvTNGU4O/Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D956FC0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912915382.22771.14840034938673254203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47e05823dd3e99481baa201818c503020e9fba940deac195a8cded519e9449f
Date: Sun, 09 Feb 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739129153
