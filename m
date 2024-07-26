Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188C558210
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722023754; cv=none; b=pWeaPxiBxSAiR7sKt1SkKBjzvfQQl6DzgwupNThidqV4i7k5JUGsu4iDvESsLx25tnTPvon+kKekzwzC6OuPKUAJiPVRsNmI9SYN85XiU/zEf9CaUae2qhG2kAHrWUq8P2d28LGQQB4l38ue2+qGHXCp8CdSqjKgMAlnQ5LTZ00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722023754; c=relaxed/simple;
	bh=1ZEwOi49Rqyh8QGp2+VtrCCsbjE/uG5d79nEPjpE/is=;
	h=To:Subject:From:Message-Id:Date; b=qmiKIJwSq+SsT2sqaFDteExlt0AgJz0Dhj4eOk/kBi+On/bnv/h5oOA0FdYLQ4ooA4ufDVNlCwNa563gU0RgRjp4N3Js3xHV0JDvClMZdzFN/YbABMJejCTTbdn08s2hWXj7rO8UKjb+cyx2cnwTNPKtNbJGsCn2UECHyF6F7cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z920UidY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z920UidY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5B5C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722023753;
	bh=1ZEwOi49Rqyh8QGp2+VtrCCsbjE/uG5d79nEPjpE/is=;
	h=To:Subject:From:Date:From;
	b=Z920UidYNjj6wKnonjUJN2Y4vToWdQmlzg5YDsh49yj5WTikjDScb69bn8S4fqebF
	 rDAN9l9WUiuT41ReQUY1XHOTOfXj5duwDCoTrUbkqBCY+mTCrrLLDmI6XB8sJ3PTGO
	 G4LJp9UFx6l1JDtdg/oqT6B9dxNUA4F8KWvCp3GvdQFraejyRjtN4ugeY2H6EQGGbr
	 T/Efm5C3iQFEZumC0XTpmGlA9G9AZDhFm6xDQNQCO4PBlYBXQFMI2RGxUYKmQohd+Z
	 /2UDQb2ER1AloFC6s1Hyshb8GlV8htQ6QImmzLkpMz3xh+dddZBPAi6IW4lTkNbXue
	 ed5rZ2B37IUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC2C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202375358.18481.5931514584561819982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f985e59f07284a95bf300c57af7bd12aa4b17256f4756a86334198838ea4eda2
Date: Fri, 26 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722023753
