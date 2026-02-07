Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125982DC32A
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770456834; cv=none; b=WKSrZ8b30SkBckxExZ9QeTTOEAtHbK+v/FjodGpTlqMBAUkiJrEmILhtiuwD0j5vjksNu+IaVfXSLvFogHBf3P02lRoisIeel9m6USddaTkUtxV8U/HRnmOqUwkGiaDYfu/adbfAx38aP2kGC7CRPUXMwI9jys5mDGdRznqgQ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770456834; c=relaxed/simple;
	bh=5w3lgmN5WWZBifuR0to+o9fAC4dpjAK1WQ38HFmlvyk=;
	h=To:Subject:From:Message-Id:Date; b=E/7SH3LIM1ANwvYbVSFLfwOk77SpH9xAfKyXx7oH1opMXCA7B1uZCwuA/TA0GMHteZUv/n2H3QGD7RbGLEhBbc0Bj3XXq0Ze7mXcisgbKeaycx0dVBxNOqe3RtJaKjnDD2U451cPU+I97USV8cT8VQz4ln1GVWJzLcaNKSDojoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k66Y/rvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k66Y/rvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C0C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770456833;
	bh=5w3lgmN5WWZBifuR0to+o9fAC4dpjAK1WQ38HFmlvyk=;
	h=To:Subject:From:Date:From;
	b=k66Y/rvqX5WmzfcfLx0gRIHAWI5iqCKOHBdcAEcrAukFwhgJIxQjkv6QJR3MLRdqi
	 gm7yKc4AKNsE0RJDpSPXcWN5T15lAsz6BbljwFZbkU0Cx+H6CcSsUcUt4vPxV6OaO7
	 zUq9/yDVpnAtm8EnB7WcTOfAQLScjLnnmenHCGPedtYIdlB81f+38TdlwzKrpLOu2t
	 UkMJaixX9eKBjrjCxn1FWNmzJpEZ0EExOkC0MibKJndcnzK9Nkc1qxuWgs8/mncwhX
	 R8pORt43HUw75lSEYnM5QAnPztAHxOXffXz5DdErhgKthBBDo6OhXflg8Kqre2p/Zx
	 bRMGn5ttnBNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027CEE20B6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045683358.30962.17570003050737024340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56205c684c8dae9b7dc293846e63cd1124657b965e21a955e0aad2119c2781f1
Date: Sat, 07 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770456833
