Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355801CF5C5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728593754; cv=none; b=OaDaQ6Nvq9lIxQUuj7lGAySHck+mVAe0aMKul/I1bP8GuI6V0WFQ5meS/VjaJkRKhoGcRVOSF03HUk/OQTw3QNlZAa/cwEx0jhYfUVr3+am6mJB5DE4rIzVmNJUBZqx5dm0I4ev3ZlXOCNI+mfvBC4stQF7akR0klUS5yz9zLLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728593754; c=relaxed/simple;
	bh=fa7tf2KMF3AUqO3ldcWjLRyd1Iom6/7MjgEyEmqC8e0=;
	h=To:Subject:From:Message-Id:Date; b=bP5sjNVT9gq7+Lo4B/r57sES2NjVh2GNrD2ytNX9LajNuiOfWuowh3FX2JU39ppy6cw2B7Z0OJBecVasfdDazXd2LLXn19VmpkRa/+4TqxSb1g3EkWqQhw7qj4GSmcrUNpjEEtkuOI1MBP7ZJgEP/t6XKBH+DZ4GETwZzVlviIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrNYE9Jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrNYE9Jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE74BC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728593753;
	bh=fa7tf2KMF3AUqO3ldcWjLRyd1Iom6/7MjgEyEmqC8e0=;
	h=To:Subject:From:Date:From;
	b=hrNYE9Jn3+tDtyVn/Cd+IwLyfPemXsyCNDWByAbwp33n1tew2JWhReL9CUcoK3WMX
	 rEi+ScW+gatJP01FOTA2p6C2TtH474dHcQPxzIk/mJ5eK3cLui6rLebmdPd2D0lzcM
	 G3j664HlWQ95BGYjn5vmZ4kqrpW3ePIYwhwVS4S1pLFy39cXWGwd2F6M9mDXSqlrVc
	 KblMU3+YDgNnOMU/JRE5dlVC7r4Cyl0iqjzyv+YQlpXGvlpLmoc6rMxBVaPLVv7BUJ
	 E3kgYfcGh46qwP81CvgpDZw3AAlai8ziKUVT7jw1KyP/iDgh5DzZlorLtNf46JJe7B
	 Ndt9AeG1GQ0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D89FD2444F
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172859375363.27034.5773926408682432220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62ebecb030477b32ca966fcc48e845823801ca6bcb096938e5f7b83fcdcd656
Date: Thu, 10 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728593753
