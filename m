Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EB32EAB99
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771154094; cv=none; b=nhFEnyP2HZ+ENDHP+Rzrdp9YZwXSpwT1XnZUkJ0wvoHPd+/eEXT9mzS6uD7ekpxEDxLHfHmQg4u1afN5DGG43beSyWvFDncrUPpEu/kxUaAAr6XUpQ0qdd5I6M5nDaVM7FCE3ZSjGtzvArMWfyAwb1QqW3KbtJNUrlfun5M8CUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771154094; c=relaxed/simple;
	bh=P82q7xWuy9lv18yOiEasA65dxiH9A5AJ7R5NlXon8Wk=;
	h=To:Subject:From:Message-Id:Date; b=WMv8CUkPH0opbTZnIPEku01lV5xeRb47fKBaSlRlHsVGS36zeW5RrwqeOEZFvky30pO7z0MT/gPMj8X/5ZRfxEVTYjDzLQu6fAD6VlHypdNn1uPQsj6cSyCCQoY2qT/6L+UtwrhfqQbQaXEllfgG+YHYllR47sGJAUBzc9ddzzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkBQqcyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkBQqcyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C752BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771154093;
	bh=P82q7xWuy9lv18yOiEasA65dxiH9A5AJ7R5NlXon8Wk=;
	h=To:Subject:From:Date:From;
	b=RkBQqcyLsb47+rJ8sJ5cjgV1cnL73/NUOsEk9Q9MpKPahXGKqAHNNgsP4JHC+fmiZ
	 knJhj6Gqwk84qGmQL8zvOSMdupPfhctkG5a6mgwhN7pAqLP6VW4CkgdyKIcaVjILFp
	 m5KuTd0rQVDi1IxgBqSZ2GZoygV5quKI5LZBy1fB+a6yyxk1OlVWKWz6rT3F7uHO/b
	 Brc28d5c5gkCHRPuN7WddstEhXnPSrxucsqMRPmOybf4TRqBdw7qufSw2QUu1yed7Q
	 Yedh0Z03pXqd9y/970qHHGPrNS3WozokcYdem80OEpXRn2mArr6O3j0nE31xqVoMsQ
	 BPfn7hVenyRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E5EF5876
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115409366.19578.836150231097407583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54caefb3ae32bfa83c029175e26f40e653d6e6d5b929557278bee168cb82618
Date: Sun, 15 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771154093
