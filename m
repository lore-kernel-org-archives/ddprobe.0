Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D63A17588
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746828594; cv=none; b=EJm70N9qT4QmgyjRhs4H9CkSkCpv9WuQCu7C0PttUkkQVtWBcxaPehLpiLeNKnOVAOxZ9WXYmg6i8ColXtrfT4t00YQlObMnWKKs2SAWNkFZ6HwRSmjZV7gZRGUDpN/rpZ3I3dzjv0hvo3Ccby4tsPzcGcFvgUF7BNUat2NvTSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746828594; c=relaxed/simple;
	bh=ZJvV+J2fHhJo0mrIjd5EVZZjNp0eOmde3xflr1DdYSg=;
	h=To:Subject:From:Message-Id:Date; b=Yjxqz26c6xpIT1+CC1dJoK1bAXgIL4ft1kjvYmYU3gg3vIiu3tUb+sQCAXY5W2F4IHpwhH84CTjAIuFiEFrdlZZq1a3pbF9s/CLuMTPbYCp4a5mmzulO6L/yKDQi/4sFAOtdG70eH7M7SreXMHKQVn6wn/PBXyNbNhpun/92mbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1f9+DGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1f9+DGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E529C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746828593;
	bh=ZJvV+J2fHhJo0mrIjd5EVZZjNp0eOmde3xflr1DdYSg=;
	h=To:Subject:From:Date:From;
	b=F1f9+DGyobcxkIlLRk2AKIpfdhHufzTtfSWJEJP2ZYrq6x0SzeSs5lGYNV3frvT9A
	 oVS4GMSfUjDieWEtfjMYzDaTYnQoJsphg5sjUhJMpfXZNAHm94pXmfbrHcyDxTeS4D
	 N7mY0s9KQovqRo8co4qoFFD+SvyBDFLzeHuP4mXt2ECX1p1cgwQWSXjcIoqcumxgXC
	 vDxfVak7Y62ABw9FqQhD6Qy1gEL9Gyru7TuXl3O7Jjr8cBcp3gJLiXY7bGHudG1JS+
	 QxjSxYGmqJ3ByDPgkKDUaY6eM4ZfDIwluVv7bojuxpb4m3ffdTCFKQ9qm7taByaJk0
	 p5PuJk7pLnwlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F7C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682859357.20836.11153282658650007661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41908de31cd9088421e6075121bcffac424e9c1bb70792b602fc729783a84432
Date: Fri, 09 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746828593
