Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2F2134DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717872443; cv=none; b=g7Jw6wX8ML9scH70ZYq9H0kEIRrK2XEom6EI+wDzeore0K2sJT4DrifsYoXdfWpCDrWM6JpnA9J1B/OW9qWF0i6fGhBYE+ip1k3QvbbodVqLOi0JuwYteJJqmJqiiAZO3Pff0QpGpKS20pqdT79WzVVUnJQKy8vP899LiG170qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717872443; c=relaxed/simple;
	bh=VF8L4iMNzQVKMq0EuJ5x1dlFFZEyZcCRBWQDLr+Rg74=;
	h=To:Subject:From:Message-Id:Date; b=sZANLpoW5WArnZfeLzTZSsSP1OXkOWkVnwvPAH3BavpqXcJ/D4Wq9lGaj+dw3XeTLGYZCvpa3VGKITZ18oUPc2m/ctLrHkHjB5ooC4PuqpQ3yeRu+uM3eN36gMNYWLhFkbcfVF67QqogIL6823N5X/6NEEbWvhrehjkwLaC+FVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrjFtCtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrjFtCtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD72FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717872442;
	bh=VF8L4iMNzQVKMq0EuJ5x1dlFFZEyZcCRBWQDLr+Rg74=;
	h=To:Subject:From:Date:From;
	b=YrjFtCtZH5KyEikmjoW/FejFdhMgewqC9u8EWVMn/0Oqr9L7IlgYCtV/9348crv06
	 JEf4iWa++ctx3uZioo0P6Q9hQNpe56n7LVfvdAdosHh4IqC7HYEJ/Whd51HyQnWmdx
	 4ThP5B3EigqRVNZs3qsPqquqyvncMiUiYKD2yXpB3CxWJ3hSc+jRLBjZnuaWiII1EL
	 8RXtX6L1brFnaCXlYGBKUdmrGvj+ZgF3eiwwnzSAkfFE1+4igX8+B8e7v01yVNko99
	 YP1VJQER1olpPufGj5KZCWkQGPiHyDCA+ZTuNqxK/FiHYjqS774tpu/a3Ey9DyGldq
	 Ug9ipZvm/v/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2851C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787244278.4455.5963007860017761190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc9d61c4c027ad91ea3df659df44ec2af15fa0c5eca77a8543c2f3568bbcefa
Date: Sat, 08 Jun 2024 18:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717872442
