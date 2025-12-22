Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA553A1E67
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766406834; cv=none; b=at9zNfXXAcH0sRHaaQnEryf/BSspZ62bBuXxgjA9pvLLFXsraxRw4huJ8iH44GeF7SFvts2JQTC3pfYWHHnHXu+MpVygIuEQK/AXF57eI+SWSUgqANZgT5gaa0HIEqrjj0+2FZDpJibKPjfXV5eYzA+xuwAe6rznRLkk7F2z+j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766406834; c=relaxed/simple;
	bh=xEN+apSgYU3rM7Vndp5rOEZph5U/fOqPD3P2SKPjMj8=;
	h=To:Subject:From:Message-Id:Date; b=JAZ+JZSQXkaYxtJJro7KuLEZEUs28KapFq+4MWJQDP/wZI4cZZGbywv+rgu82aKieNL6D8z3NOLsqV4ScuvucN4cq7wpHPsHx8r9rzSuRB6ky3W2SH7JwXBEzreNpYv7L5RJXGcN9Y8CFLefnsrSXdS3RgVrVMeIzIGBzSnoa/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzurv3lN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzurv3lN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1C4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766406833;
	bh=xEN+apSgYU3rM7Vndp5rOEZph5U/fOqPD3P2SKPjMj8=;
	h=To:Subject:From:Date:From;
	b=fzurv3lNBgyRJ6sfE6TdXnVP6CrwiSQHsKOOTlPEiSf8HnV5e7HhNnGIfU3o5VdC/
	 8I7/DWHEcJgvgcgGN24TgaOCE2B9wHlEsrnwei4VHnhYViKYFKqoioTwK6Nw70gyb4
	 B1dkh9qxqCfoFm7nXKdZdAKMYxc/+MA+3f09C5Bhm1NrdzEc8CmF4Ib1EBCafDq4Nv
	 xOgVSsuEdYizznW32GbYKOHQvgtC34twWxAp0OTVW+nTQxa1EmkflzfBBTKmPRZhiw
	 4phsuJoYygJUpA/83nXmbdG28a4mrp5d8RaMD+t5S4BOs9SVsdHSa71FuCuJfhIzUp
	 DEng+cgT18bEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F109E6749C
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640683357.21204.14599102515894399457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a65483937ccc8b1ed996340c11ac4ee8f7a80b79cb896ae26c79372a471457
Date: Mon, 22 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766406833
