Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E558152531
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717254263; cv=none; b=oq7BZ6Emy5yTjiPiaPPmw1/zIDKx2AIvNM58jMQZbJqSEbmeCyJ5EAi2HPIpNKO2D5geUPl3fY0L85JnIi4mLc9hSeXVIud66rNnOxA8d8PY9DrD2ULXxCLdG/5ri4xW7HYWLkOe6sTAv/l4JIP9MRE2oWah7E30Lc7w+zVBL4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717254263; c=relaxed/simple;
	bh=96PEpudqcFYyjp/aBPv9xL3B1JCmfuW08xwrwVklaac=;
	h=To:Subject:From:Message-Id:Date; b=ASSwqMKXkzaSAQTyaOdZrQ7rUL9d2FB+36yhHjh6/eWYtZriKoC74+vo/1Drv974pWMbuSXQ3E2auFJ5J1ndZCUuXXC0bq40zJrYAKga5n4gKlyulc3stzrKCwNK+yWimvnfvx3soIQkuD9SmXEQ+pZTpMcnXZ29ARzCr84LcrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is8z/7b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is8z/7b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E25C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717254262;
	bh=96PEpudqcFYyjp/aBPv9xL3B1JCmfuW08xwrwVklaac=;
	h=To:Subject:From:Date:From;
	b=Is8z/7b+SRckaTBslX0Yk4OjdR9Oc9XazVyYNUcQ6s/ApnMeGAiTAJztcWg5Z1NNJ
	 B4s2NfYUGbsxZLxIhmPyhBmmtNs92Z2gtOwqttSUTIRukliMGRXzf517nuQBFHhktD
	 539Nr2zS47fr4ndj5ZULmTdqeJv7vPngJj6sP3GOxDPlAANeXrfUdAMpwJ0PZKkrMb
	 pJrA13SRZPSg9kTHYYbYf9N01UU1E1pNaCSETHVcN5ychQX21DQL+TRTjn/A3ANt3G
	 rUAgh2kr2peO1Xxp6FrNOvC6PJsePM4MllJ6m6EUJBERH032bK+9M0f03HJE8lp06L
	 7DD6m/DmXyfdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC0FC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725426278.23635.1444564259849300429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f720d797a0a7dcfd840d117a9ea9b708a17f7e26e6552b19a5fa2a73b64efa
Date: Sat, 01 Jun 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717254262
