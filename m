Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E679583CBD
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711027097; cv=none; b=GCTl/Whdm1eb5zi9RyAkK8XBhsedsm7gFy5dLLLkumFz5rpz/facrElhaoqxwwJYwxKkQgr1RCzL0WAHESIxfvqNFagxQTQqiYEp+vHLMtvGo+ZEl/h4lNvs6G4VSjZzJu1Q9KLK13ssBh8jzxoIuC8ByIxe1+eIGmtYoBOAEqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711027097; c=relaxed/simple;
	bh=mq/0z21y3/OdLxheRJZhcRKSUmmEA0Fh/yguUIKdOIQ=;
	h=To:Subject:From:Message-Id:Date; b=BAwEnefb1JS3qC40xUuSvbCAwMxO8b0imqPxFE9fGESR7RqVgfqGrpKSAcPCzb0MqHhn8HqgPdEsXWf9qFcpSHAVtqHJW74qw54i//JjAvkYQLqXBTOpNk+7jD9TUHiD5Lb8Jm7xkIuRkqIvaYJjEYcnlNZuigDRaD5hQWXqvnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHlpjfQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHlpjfQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE47C433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711027096;
	bh=mq/0z21y3/OdLxheRJZhcRKSUmmEA0Fh/yguUIKdOIQ=;
	h=To:Subject:From:Date:From;
	b=hHlpjfQE9N4xq4gluVF8bx5b4RkDi8TOpnJMm4dC3fr2OUbwDymvfKTk8BNBA22W/
	 XNx2XQXCij8613Z/zGgDxMj77gyuEOQLUXLMPV5mPOUIWigbs4rvwPhLXMNjvU5DqB
	 yFDgXhA6GdOx1fWrd8I1NRgRkgLUckLwvrdzp26Tsjy+uv7VTLX3JaJ9909RMnofLn
	 nx0kouwEkT9MhoNIPwIZp1OkndQbTnd3KVUvSWsGvc1FSNm1j/nWKB9yPYKTMA5nUY
	 Xmy8v0CzJxExSWMEiUWoyi9f/BxfzkqLkDpFNeGf6xiWxrcUK0gpYK7sLZKOSzlcGc
	 MYzXnxUfKuMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C33EC54E68
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171102709637.26469.658960119797777673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445e893825de0a98087216fb07312ce79f728d9695851220a2e7ed2df14b66f9
Date: Thu, 21 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711027096
