Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F65237C
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713497963; cv=none; b=DAW3+pNlRsLHgNNPjn1Tu2ZRDFYVwD1QNzQUMwkpPQ5JkEsSGhqNbelnH4aLBpJxOVBVtUPTCmbs099Js1UbYVpSh5Qx+WQqo1427DxS7nNhOuU0XXNov4MO3tXswA0N9JEaDQN8tsUc2FrqnENhhk//QYfvqzgGW38V7DT+IaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713497963; c=relaxed/simple;
	bh=w3O+eGJBxpyaDdWTVB35e+UnBrXhrfYBbZSDxxueFGI=;
	h=To:Subject:From:Message-Id:Date; b=tIslMfbvx1yZEktdfTptJFshNpkOJe4GXWLE+CarGdO1rihnSrg0p2V/9iamvHGyDJXE/S4PwcNjcw1To1oCmnaUjwRgAZd+e8F7k7Ikq6D5FeLv/OGIPxaT16aLQTH7q5u5itJx+IUyfnGvpHHuDQhHXr0Z73ECWxip4QgkVvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrkXOq0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrkXOq0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD194C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713497962;
	bh=w3O+eGJBxpyaDdWTVB35e+UnBrXhrfYBbZSDxxueFGI=;
	h=To:Subject:From:Date:From;
	b=ZrkXOq0YCvwW7kTeLmOCvIBBnNBYDJb1B0QLi3a4y+E5/MonMbtyQ1Hwj+ziEHshJ
	 bHeB3gHi4EuMwiBq6cYw5BlSCFmh9CX/rEpkU3Uk4MAy8ne/G5xxpYJbfGZt2AHZH8
	 wKITxipiP+09MOS6jRNpWZdtZLlNUol7BlC+h3RnGdPlKYbSAT7+3VlRljKsMvM2Ej
	 s8Exio2W55eWELML/2B6FvTlnioSsuZ4pdKlkjnvJ7pZLrbW3GzOZv2EY3H4ObRoGL
	 wAYUZetuInAaYRRUqWhzqmfuTXpnzvHk93DJ1SeNdW4CmjwjRPUyjqomKdKXeJQfe7
	 ZMRO3XgE+RI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CFAC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349796277.2821.9836831617345455384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15dc0f4b2dd75f9bb353ecbf3f06b1680f5683b18c4c0a8902711555ba308c47
Date: Fri, 19 Apr 2024 03:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713497962
