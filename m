Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552413B19D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786402834; cv=none; b=ehmcrkaN5s68bUOMYi59KvZJjrty6TrR+LQCLs+HSsvC73Syv7Ow+R7RUiIpUxmHKy7AYa7yCvLADx4seJ64cV2XHqbbv2MMPpa48lqW+cyxBN7cp4BnUZPLqGNVU6Q6jwBRnyJenvFzEWEmrEbLLyb2MlILFtM0aduZxqHsOSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786402834; c=relaxed/simple;
	bh=Z4A8EF5xTOB33VR8QKzyj2rPp/TkE6ML3dFq/QoyU0I=;
	h=To:Subject:From:Message-Id:Date; b=IFBvIXIJkp7ab74J9cHh0W6Ix2pRwfGCxoX1mwKzDCKVKH40V9Zo4KapzfImihwbjpscsAL+ea9oPT4l2O0lUcn3vWTalhmVmy0YJpFYh1sgysjy1PFx+glqo+wg+VNonu8GofWjTnCXYUMt+/ANkE37lHufZMU9/BYFxc1VNDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoO8RzM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoO8RzM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04CEC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786402833;
	bh=Z4A8EF5xTOB33VR8QKzyj2rPp/TkE6ML3dFq/QoyU0I=;
	h=To:Subject:From:Date:From;
	b=JoO8RzM6htmQz4ehV/NKHNyGrdcUv8DVwlyJJqpXJSt4uhFsYOpMYgVZdL4chJhm8
	 kn4UeGOcJIjyGbFfdIvsZ2kJSaZNQuKtUo+TbNCagcoV3E2ZE6oXRQPqABBSKoKFs4
	 /vD76hKaccmvLDkmLQIKI/d+X6bZylwly1VZso7ai8tDStAZXN0GS/ucNQCshy/PDU
	 cjVsvKHZhmPV8VFqdnaqgxaAoL1MGUMnJaDQG8g0jUG4oSTGE1e9GiSiAzKqNpUBOF
	 Wbbr9XVkf8m4ox8NBr3Chh1y4c/5wbgga+dQlsiXKDepae3xFtFHIN1fyqXjO1NJe3
	 peq1bMDWnUuOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0FDC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640283368.3853.709428227538654977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe363f9cf8d69627cd5935f771644e961e85bd57e5596b13ef877a02abe9404
Date: Mon, 10 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786402833
