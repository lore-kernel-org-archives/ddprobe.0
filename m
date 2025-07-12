Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E999946F
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752284394; cv=none; b=l6wJGUFne9W8Y8xCUVOiMsbZPkjGq1kgKM/grkXcHBWDxs4UJK7ps7e1YFtk7M3efe7CIgWvHqVNasOtvNREj1CQVMhX+uwEZgsFa8pXn/Bh7izBuZ8ManIKxznVXuCz7fvk1SOriuS9k0YTzO+HYzpMaGslU+HkB6U7lltE5bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752284394; c=relaxed/simple;
	bh=3PB2TcIBzYXAdsfFSvOJGZ8KEbUNKQyFHVxwUYwX+88=;
	h=To:Subject:From:Message-Id:Date; b=ItiIC0wV1FEUAnd1Rjr9X0L+aPkLH6eVJTsggdxfZLf0PJGbizwC+ST+t3lmChtDfspGfgBslNx/E2D9tucVgQ1+e6pptillZhK6Vi+gsvIM66qtz0BPYJbPK3M2/Xy7bZTta3pG0NchwLMhl/y0uznmzZEVRy8gbL+P7fcx6o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnRSVhEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnRSVhEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC1AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752284393;
	bh=3PB2TcIBzYXAdsfFSvOJGZ8KEbUNKQyFHVxwUYwX+88=;
	h=To:Subject:From:Date:From;
	b=NnRSVhEB8LfbD7EQs2GN48e6QkOknmC0ZAKnrtzgiAA0dfsE/tyWKAS/BeD7sIsQ/
	 AS2y2Sya/YFZ0XaJSm94TTuyyjBa+6RV+PD064eUwnsJ7bmksPW68yEwFmgCOTnGD5
	 FTWMMAw212SoSyMcidx4bn27FJ7JegJDE+AUC1Dc8vdYiAD7A1x88hxlEhHxBQRDtv
	 xXHTtKTaN30pY5n7gU7YiEXUr+916IgyMkOGOyFjDQQ8EGwCD6YJSGsEc95PSLW6+5
	 41DLCf/9/NWmNDF19ei0Pp2I203qaTKPmOntOtabIwuCxmOlJnDx1iA7a4a/wbXl/d
	 C8+6vj2RjTsaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2AC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228439357.22914.7637839702464464661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5aae6879732db7704ad57cb192e44c6c40379a6f878eb7143817819ef15e476
Date: Sat, 12 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752284393
