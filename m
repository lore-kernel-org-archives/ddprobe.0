Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB3421519C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736415354; cv=none; b=SgwVn87GNCJI/5IZjJuqEn+cPNkj3gXGaskrpaN1WR2n0nS69X1KQcNuTSod50GQNW0K8Lbq8+Nfe30dGbFg8QE/Fo9QJxD2vS8y9dW9f7RoQieYo95uiRDuq9VYIBQW5gX0LOsL27HkY8dBTcpHJb+8AdnpcwjG8Nc59HWwbUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736415354; c=relaxed/simple;
	bh=YbA6Jto0BMM9OlOBqk+h4zZ6+KpYowK83Ruo/6cvhmI=;
	h=To:Subject:From:Message-Id:Date; b=Kw1+/gz/mPcF3JVn0eUSYQjM3NLdNq0gWacILsYXlkMs/pGQWYoPcyF5u4dYLZR9CWTrZ+M3wbhy44xrw2OFlAV9yq+TOf35CiK15rHeZBjkgXug85f+zUUO0yZHH0s2hov6EO38TyFJiBpjNhnBqtNcIrZmt0Wxtwl9h3kfc/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNqsWq7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNqsWq7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DFDC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736415353;
	bh=YbA6Jto0BMM9OlOBqk+h4zZ6+KpYowK83Ruo/6cvhmI=;
	h=To:Subject:From:Date:From;
	b=gNqsWq7TnaeIR7h0lgbFDwx/IeHMqJ9pvdTxOtupRFEVaUr0D8EbvRRhgJSzUea0H
	 oSZS77QLV1XUur5D3yasbxWRfTRQg98tyZ5v/4J450Gq0xrkmmYPTiiVBIh9npSrOC
	 4MHIxjpQWK6TXZnteQk+BkaA46uuZSZQl9WTpX33C43bswzeY0N9toWojLVf1zIw6P
	 dR5czV8Mqgn5qDzJLLc/WHcF0Vcuyls2jAsvu1hwAUO92xXmSWjQ6JNRmN6aYryvcc
	 3zBphg/dfK6nfpgqA275CNdc1BNWOHStMpphJmZKobh0TW6JwIi7JTathN44B7FsBt
	 qJGbHCF5LnBiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D3E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641535359.14626.11032542196697176016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869687628458e743f3079ce54277b1d233e608e891d7f11feaa252aa60287b3e
Date: Thu, 09 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736415353
