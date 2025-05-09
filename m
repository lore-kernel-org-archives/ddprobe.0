Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395C7290DBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746794394; cv=none; b=YsjfaKuUDnmXMtR2C21q+CfIL2AMF0ZjS1ULZ83REMsosofd8OTjteuPvTFK95m3TuT/z6slE9/qlqt3b2gu8mzpc1uU3QzJZGPdm8FRLpj6/jo4SML6FqsOn72oRspWy8V3yVWPClfncOD82IIbCCA82F1++1lGkKgYgzfQ29E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746794394; c=relaxed/simple;
	bh=lpKdQUGfrsfEn4FgM+DbKuxsBETVFZO+Hxh7mlYwJ3E=;
	h=To:Subject:From:Message-Id:Date; b=fNpM0LPYZJwT8zJWJ1GUGChtTGxLQIX3RCbVMNGs5JPlDvEbxN4/Im17VS7luuzYMcw/Ia/gGrW5vEn/NqvDhIUdkBypWmYFK1yfi7Y1O7vqG4YNrYx+Talmt/BRUOUH0OfflGsjo3FVJ07KD1Dmv1WmLCEj5u2pwhpJOlzQACA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwZooACr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwZooACr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E2C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746794393;
	bh=lpKdQUGfrsfEn4FgM+DbKuxsBETVFZO+Hxh7mlYwJ3E=;
	h=To:Subject:From:Date:From;
	b=XwZooACrMD6SrearxrsupdGKJ37gthVgK1iKfAHYRWt/bLonk8XgUim3Bo8FDpfdQ
	 oEPnqhPk1bnkKFgVjOPzorOvF+8RNmAOiuUtwBUkgMXrTIOsY1g/Gz59L1ichGmtk7
	 t5b6usDrQlgTcfNi051XKBdwknx0ct9S3eXOMmEw9COTsyiMgh+2EM8IuebvvL4QkP
	 4tEXRAskORTZo6/rlpHQQods4/UbvkrghvMb8Ce8AuwxRE+F8wdslLakztYMZ2ZMka
	 XFski4v/X9xBxTvDNVGr4R20IKISvCkPiyOcQA7YF/0hJKEQxFVQp7PHudFY+dbVJ8
	 ipOGCP2oF93Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB9C3ABCA
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679439359.13831.12698520902415077922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa17cb5f7ba15bf76f7ac01b25c08f8df08d8a6be3ab8d00d921f9ec77c420e
Date: Fri, 09 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746794393
