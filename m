Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D140211CA0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764165773; cv=none; b=i975/wJfU5QqKeGsckJIA4npyNyE4kw/+lS73u3hQd1roTDlYBWejpm+sLnX+wbyUySElbierwWMB5LEW5PesCS+W6rVT8gO3qepRqrAXwMc3j4A/SrA1nNzltCBK3TZDjIFpf2Ng3YyHpqQdw0HZEWTGPZa+B3tzFwSdePx5Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764165773; c=relaxed/simple;
	bh=5kDfRt3eiJJclwacjgCdSvg6HbYBEBtRbB4/3yllfSQ=;
	h=To:Subject:From:Message-Id:Date; b=a0O12/0Q52b6VGiyi/GGm3n+edPWjS1Zbc095FTIx/n92W4jeX5biqheNNQ07u8RtsvgSdXQfewBpJUEjQ6fBzOLrZeQ/swmkosZYmT3MIL/TVxtoLZJhNItIT6I0lTcAdi40OZpu9Qbkg2Ye6Pp4WnphhiUtCgBU6T7vAJE3l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmoc49qO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmoc49qO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3EBC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764165773;
	bh=5kDfRt3eiJJclwacjgCdSvg6HbYBEBtRbB4/3yllfSQ=;
	h=To:Subject:From:Date:From;
	b=bmoc49qOkKwtmKKWXgLIewCwjjDwjPZhDpzqurwt3wVkx0ZuLrfbMrBnfqB7c9gBg
	 JxgIRRUM4QCKfW3aYke1A5nQf9ZgUz5UrOPZSLEhqnXzKQIfVpqQBlZmoZMhiff78F
	 ZSI8NUn23+h0I8rm+VHmEa7gySr/Kp97jBnMK/g6IwJgnmX6UF7oWxaZxwmy7b2Wfj
	 jFHfZzYJSUNoxOItiGmqYXlh6wDMrJJW8aBg0jx/xQIwRznzL0Gfy5hlVd/3QzSjIe
	 upr9oVFz3If1WfXdOTekWEtOkyATfnYLn1KRE43RghtlL5hHEA3scz66/h3vuLgq1G
	 sUD6SDliHBtKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E5D10F4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416577358.13002.16149487634668172736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b73a6079430a1c8d35f09eaa10fdc7aa9419789e2531196b668876161a1f75
Date: Wed, 26 Nov 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764165773
