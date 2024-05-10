Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522EC1708AB
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715353943; cv=none; b=cNnk4OmwEL8Gk8MGyB3wK2ckU7TS+zZpCV+yC6rGwoPLNhIe+BWj6+Gir2BeP4EX+5wL3AKHXd6gB9KVSh6ijvGoplJ6OZZdGw59rGygKFpbnvVCZyayRe74d/xqkjALPdSxDCG5Qeh+pcr1U+ZmiKBdZ7CTPEa1qS9cV9+A3vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715353943; c=relaxed/simple;
	bh=14J/97DsHFmzYBkQzh4p9sruAUvKWefYAr0brXbgkxE=;
	h=To:Subject:From:Message-Id:Date; b=RtX0W/nJv6n1oWgWF/VGKNxpP6eZaPtcsM41cyOYJLE6qfvQ4+IF0tT7mg/TP8byz0PmERW+ROUbG3PUqCu1hTMs3+kJzf8+P2Z8bugJapC6LZcLjk192W1T8rvZI8cJeZypLjRIkcr5797v64IYG5nEwNtFqSxuw7LmtO5VzqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXDoqyC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXDoqyC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF63C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715353942;
	bh=14J/97DsHFmzYBkQzh4p9sruAUvKWefYAr0brXbgkxE=;
	h=To:Subject:From:Date:From;
	b=dXDoqyC0fNOAPfNVJLED0bNgN37ZBXo3Qtwp41KE0oXuSVmV4OXl7TkRJqKSBiLGb
	 Aiq1KRcpi+evSQtytccCEib3adBaI1vmaDNMakji2HGB5VZKFjz3plNRIGvt6dEgK7
	 z9REXoArmoZ0XdXNENLio/MS0X+HDKizEq/zMUw0xSZdnbSHnp+r1FbyKyvriNDYQl
	 /E2aCXUJMlh3kXTWU3RDVjnRUZqDOvU2iLLRHzHSxCTC3W2azeVppnvjkypTasCHpL
	 UYOuZRAy6uOY14sVPx7ePati5eX1qBzj6U0Mc8ozM8oGSCZFXGnY9c3KzqKbJTzP3w
	 lnEeGxcsJT1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB64C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535394276.9633.6564799022581922979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0137959e835744342f0bd0e657d12a3c59985a8f1dc3684ae0934f07d85274
Date: Fri, 10 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715353942
