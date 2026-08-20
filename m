Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001C640B0FF
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787219435; cv=none; b=Mwx4farv8nZOwypld+kGuhOYx1exc/kgA7Zxl2AcCyX0SdYCPmyD0Y5PQXJLkguaHthMJJ2lRUn5Azs5C+aReETNq3ueLCoY+W8olN1Jrizug8M279C/Tmi9lS5F7Smnz29Khv3d10yQL23pTOAxNaTptGFHBqCjLa46sRHf1so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787219435; c=relaxed/simple;
	bh=u4rK/ZvF1EvxuHUBPRTmKxmSEOeIx1vrQWt9lW318tI=;
	h=To:Subject:From:Message-Id:Date; b=uLrcEOB+6+eqKaml3BKd2Gn9mZ+ZjpiJ3t5dGTkNHmiIiVaoL93Rah+DlVs1YkRmN1QfZPVUHOUF2kr4jcA/i9StGpuRZU1/xR3v6S1Pzl0SPD2PF/mJKjYg2XW/Tw6BfzbZbasRpoA4NZArLp1LJLkekhTV5uHjofOImXABs+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYhgQGxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYhgQGxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F41C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787219433;
	bh=u4rK/ZvF1EvxuHUBPRTmKxmSEOeIx1vrQWt9lW318tI=;
	h=To:Subject:From:Date:From;
	b=iYhgQGxjjLCZLj/v3wNuZX7uAndCuxjIF8eA4z9F7LKxjryTTByX3kFcxyWFqRKMM
	 VRiTt0MOMetCFkY6FNecijssFHvlBHcyNJr0dTC/rUjChTVAbZCAnFpUfrVgpG4ykY
	 hGQao1fPGgzt12+goGsQ/uFoMJqhRFh15Gp3Am61EQzi67WJdo6Us7OCyYWmNoBQpT
	 eSpyTH9Ks6sNEsxylkKZFZtc6FMkm0386KFPDMw/YLKgd+PjG7h88mQh588Yrll/bj
	 2e9m7Z5hzMCQp0Xh8oK0PGubAKfkWnb/vXgEC/3LSUVtbRpt84XgKh7wFS77Nn9aT7
	 6AQwNXvlYbvHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF88C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721943369.12395.4105499535727185454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c505b7be8308857cee1886526883216f28a562d569f0028c7aace424ea2e6236
Date: Thu, 20 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787219433
