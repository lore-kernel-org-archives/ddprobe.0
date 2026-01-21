Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27086217F33
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769024634; cv=none; b=OEzkM10QAJcmT+OXn0lN/VJ7jSfH5pxtFJgX1XMyzRE/zjejSV6CM82M4q+bsMyPXOFoEJdDpSp3ZsFJMyb7Q+9hyqTEfoa5rfEounheVgLoZ3wrvA4Bv8C2rfOqNVtkRo31ECNMzR0R4Ez2d9BcY/pLH+VjnghX1BtLX8+e6lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769024634; c=relaxed/simple;
	bh=LqKFfGKvx1xQ6Vq86qNRs42jeRLS7k2Ywi72qd3CAvE=;
	h=To:Subject:From:Message-Id:Date; b=XPEKGnNKd1Z4B0uqkULikkwN8gu1TMyhjweaoH+lZ2RbYl8jCNd3NqF/nC5p/EhEHXpNBxkFuHjiWdGOse5KfBzj0nY5iuGBYjGBfdg8DwgQYXVwZR2dYMkw9s4xQu4WGlJsB3re9omyE1kW13KeZJ461nEcAvlJvPc5llnSIRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV/s5EqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV/s5EqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13ABC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769024633;
	bh=LqKFfGKvx1xQ6Vq86qNRs42jeRLS7k2Ywi72qd3CAvE=;
	h=To:Subject:From:Date:From;
	b=XV/s5EqWju/1EeMM2ZNKNFWS1aXi9YhiRHFnHgruL5VHaIV5JAMJJyC87RJulPWBH
	 YS1EjDpRTM9HXkM89XSYc3kON8UOdPgxJpMWhOCoq14C+OMDqvND2wcpcsTZ3lKdvn
	 qi/bAtLOgjRcgW99Lr3CtE7zOPCJfjRfFO9MO1UrsGZtoTtJn4hPHKyMcidltNqF6s
	 X7vlUGsOxb7jvd1V1EQLN5+TNN7HjdpzzZcGL2Vl+CjwVM9PG83PbhiX+R7StoRJN9
	 NOLLZeYv8ki+CMZ4Z0oaq1foEulD3Q2QQT6+WX3OZjS0LPd7cHRuBIBa+ZJVP1g8Ga
	 kjeoJLhMgn/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087AC44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902463358.17467.3727087689371725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa15ecd157e7fdbb62f1d2852f20f762b4d117def45e471691f955935c0f88d4
Date: Wed, 21 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769024633
