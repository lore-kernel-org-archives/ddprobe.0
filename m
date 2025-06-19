Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F898633F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750301994; cv=none; b=gO+HRjwK1LzUFEP5C/ot3anlV8b+9sx6U8CN2T4skedc9WZjNsULVTnpIh/9FBJNYt5iyrLpWBtae9rjNvBvbWJtcgSsAgPClON254+m+gFSOxRLjokpcHCgN9i0j08TvsT+WCklvLf4ZCFlnvoWWwKCWp+VQ7XwdWX/kzHsoC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750301994; c=relaxed/simple;
	bh=+g+zPPKL/x+0Jnut5FEeE+Wmj+1rszBQZlRnxFwfGLg=;
	h=To:Subject:From:Message-Id:Date; b=W9TYtq5/+42poQ/g+I9sBjUjGQZqDc3DYDv3u9JEi+jNbSXNa51zyYZEpB4doGJqmOneffYDcM7Iok+2N/vCkOBYIiqviyBQeHgIJtEXKzDxzEDxsuEyeoU7F0i5X6IAxEWxlS04cX6fMYTiDw499pS2/Yq+kiyNHXitKj+tTmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKC3bPy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKC3bPy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF79EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750301993;
	bh=+g+zPPKL/x+0Jnut5FEeE+Wmj+1rszBQZlRnxFwfGLg=;
	h=To:Subject:From:Date:From;
	b=IKC3bPy4/6GuwOpfjVz8aQc1UqrpKvObpjyNdxt4hNddZZ3OelJQXcHd5rvZSq15C
	 6EJKbk6ZVC59fKXWeTnxhMXVAKFM9JklD5zQj5KJAyfABUITkqzltZME6b30HckgRf
	 hHH31Xrr0crnsmoyBXuwxyM8vpX8iLSrREVko3hQyaZbOXZ+qaLtMnxgju7EFC1bMz
	 bPPCpvNA5qO+spY5K2Vzs79izn76OLn5J/XtzlBCwE5x0YKWa6X/XDuICpVS/9bBu7
	 jgpqn7ZUezjCdY8eeNU2+hfXoCgocb0Pl9Dy47daTaHpNMNLGdudOnDXQItFShDcNs
	 M6lh9H5Of2w7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AD3C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030199359.13358.17925670696273668337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813e161410f5ef184245c71c8cee9482f9214525ef2370c90e9328205597f4d7
Date: Thu, 19 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750301993
