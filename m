Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0A3482D3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717845443; cv=none; b=sdqpCXXP6Mq/MLrzfeM27V2eWBACLvoZeKbMh4jJvG3CXjYk5xJrMQ0oTlrJ16T+WAYjI7oAQU4Z9uAcLziYrh7IoJvmDIS2Uzk0C3qf1/YIzcW6pbXTdWLy/cq8qkv0hl8zYt2deWfzEQcgznkeqwoBhEFhBebIK/cwos4CEdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717845443; c=relaxed/simple;
	bh=CMS+YovLww8WvJwfrd+gelbQSzEOnC+g/uWqKAtpFuU=;
	h=To:Subject:From:Message-Id:Date; b=BZs7LlwJwgzTPOkQegIGziRsN9mTFFWcZ/42fgsEU8BsKRixJqLkIMFsYsrweE8hfpwrDLcZKbpCjgqxykrdNhX7vpzv6/KyvAOtyx2vQJgziH3uEMixHb0sRg5KRS6BAMserV+KSDyC4AL2CtBwbUMzugzMej1Qk7RZj729J9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqHfIyjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqHfIyjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2597C3277B
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717845443;
	bh=CMS+YovLww8WvJwfrd+gelbQSzEOnC+g/uWqKAtpFuU=;
	h=To:Subject:From:Date:From;
	b=nqHfIyjwCxvmvMaVSER5CNDaFXM0A3662up6OEI3nUWjTAxb5t4QICXmMDgTJcpEx
	 8c0JsE5EXMr2u9JnMYRHhWIpQmMLtIF5hes7FXVmbLp3CFLi+BLz7olqJpcxpTkacT
	 eTxKOZgSrPdKkGh/OiU9BJFg3TM8w7X7A++jvSvhgmnRfFQ1c/0cdHKXsARsjyKsmz
	 4CgwVgvMb9XzRpjZuxLjv/y1vei0qJ3MfWK4y3wkc/dwch4rGBuXnpu6vfH1nh/iO3
	 A6uqmKYJDhHMaLrD1qebXATrgSaTuGhDeuBKKG+8x56dWgOAXwNMhxGfIro6WeVL+/
	 afJAh0eVp56RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE9A3C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784544283.7972.8439129529982265555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d031a809eb0773d3413d4eeec925548f4ff3675a417d32901a06692e988e652f
Date: Sat, 08 Jun 2024 11:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717845442
