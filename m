Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295502F39B9
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771664094; cv=none; b=au7meaWBjwfjqAcqnVIkNDSzKQqclkr6NHoYSfkOm+LqCxYjsKZaqBWYaWajqZj95XpnKXjKQWTnEwkIWoz1DbwOjWMGCtyj7hwZaHN7f2vaBMfneWKT5zujBBKGZcg91g55qIQTSAObaWbpYBcLhXqBZFr7WGnvOtlNNJZAK/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771664094; c=relaxed/simple;
	bh=VZiqHgUhyPTtU3UIAThYQcb23D6D4LMoHV/9CXkPAWo=;
	h=To:Subject:From:Message-Id:Date; b=qZJ6TUrszLMY/aHZOBHxz1gVeUoCZZIV/SlH7Q2pE9RLC5LHglTupt5cEtrrN5GBqaa49GY+fAMUugo8WdSaNBXeO9Xk5LsXZB+g3HsvJFybiNVxsczdUq+IyOtl6nPyPHz83c4ey9iQ0FnQrsEJr52CL/clrkGFKyUnhWvKpa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBEZ/jUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBEZ/jUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD17C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771664093;
	bh=VZiqHgUhyPTtU3UIAThYQcb23D6D4LMoHV/9CXkPAWo=;
	h=To:Subject:From:Date:From;
	b=oBEZ/jUf3sj1HSt22B0QL4Nr3HEjoiafYT1HJ/s3BN42+6rDaVBQUFB3ya3ub/xeC
	 NG3UIGLLZn7RVN8Dg3g1hNiqSwEoFXtstaC9sW/cq7EqJ09OOz2fcLQxOpaTzb5cHH
	 Bo/rW4TkAW1LE8iRH2M9Rtr9PKnpaO2meG/+QSEPGA1DKYnjz1LRbig9lQDesNzlkh
	 1glWpt+Kd2IzRSzJaY2QzmnRvbP3IoOHoQu9aTnIosGa+ISqAjTmSIdYtF7gUaSTx0
	 XetKfnyE+Hh2ieWRht8UVMSoyuPYOxdcx7qMaDYAFC06CUVV3CYf0QmrV66o1+cV4v
	 Bq/Pmmm6rzFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C4C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166409358.6138.16071245109401228299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f225b9adb6428d16894df232b9ccbcea9989a54e850d4d893b81c22800ae7891
Date: Sat, 21 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771664093
