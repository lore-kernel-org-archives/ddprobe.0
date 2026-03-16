Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B411922FD
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773640494; cv=none; b=faTX7BqgMBXxd3DP5ZoTrOvW/mWRoRP+zRRJ3VPUC/+UheNEgRuWHVr913uhQgIRXM6u/t+ENAhZUMkFGzv4cUKUPOwjzq/UYcae/6a6jV/wLJvWmkRU6oKhGeRrPTymEJZs9NAlYmnvAs7K3LkQUj/U8fWfi8DYR4nU6042Q3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773640494; c=relaxed/simple;
	bh=YrStDBsdAxiji4+Dp5i/+cpkDx/J1PfBAkrSxSYH3F4=;
	h=To:Subject:From:Message-Id:Date; b=Bws2bUBaQTi5Yc7lH0u9bT46LwrbVkpIoyPhGH3mhkuNf+CV/vHDY/SHHWYqjLatZSCnxO8Y7EkJffeTQO4hbcyiD1BRfRfqmRgHPduAcjPXeEoWzQT6TC6pkR5UHfYiukZXMYOcmi06Ewl6TDRc+3cr7JwmwvEfW9dRcA+8T4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIpTEA8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIpTEA8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1414C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773640493;
	bh=YrStDBsdAxiji4+Dp5i/+cpkDx/J1PfBAkrSxSYH3F4=;
	h=To:Subject:From:Date:From;
	b=dIpTEA8u2a7aCxiu/3nS09ftZ4Jr+enmUK4cndPj5m8AqtK5zc4wwASm62PSQTWMZ
	 9BPxpN64O0U2bIfkbMQevX+6PyqaoyvXDFi1ghbOMEQZxWQHIaFhwGTYu54O5SrzLP
	 oes/L79fbF9vtns+9NQzGc8m4ZRilfVov6hjqY9rOIxApPqVxz1XvdNyL5Qjnj6ntd
	 jiMg6Ak8yYmnqfIdgDI3Bzopl3q+lo4f4h4W+ib+uky6pTmabaMvBc8Yy9nD7ykdW4
	 v2E0a4v837mVJ/F4eH7EF1Djj7HJfx3nIjQ4JGbskdAl0I7/48j5weryV/6zZUYDdr
	 ns41PXRZZesFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBDD58B21
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364049358.9765.4071516486823911570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520a7da6ab40b2415c097c45d14f3a2f105e035aad1f92ef2511385e63d461f1
Date: Mon, 16 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773640493
