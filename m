Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAD725F7A8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749668997; cv=none; b=ZWfN/S10gl61sJbYISN8cAJp60c+XYn8G/7Tmyfs7R9kP7b8ivhV/1nxWwBB77ZEzPqn0AAHZ2/OkDhdpm6wbEQskrFM0L59xNGcGdUfEhoz9MyWsYZjPj5cktnAJu4MwQDcAG9pNllW3JUZNlFBn1S+E27seFSLvqZwnSoXTfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749668997; c=relaxed/simple;
	bh=AjdKg/kRgr2mtUFZ1J8KoljB+x6Hh829Mj8adm3jyHk=;
	h=To:Subject:From:Message-Id:Date; b=EohlFw7j+Gs7RjoMsXlVaYAYvhpZyP9LWetiNGrhO7V1Z68M+3FWULJdLFJa3hRYzU9ZXX2C1vJsD1rWIemrujl/TdgKPq2jrXbp9uHagvyX5TNP8ZGh8s4iwz7YRYZoGN7cSge9EOjq6rDvqX6b4JkAZc9tBCtLcFSGLQiKM0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnG48rLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnG48rLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F17FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749668993;
	bh=AjdKg/kRgr2mtUFZ1J8KoljB+x6Hh829Mj8adm3jyHk=;
	h=To:Subject:From:Date:From;
	b=NnG48rLqnLlml3NTme1oNZgClaoXeIsYzolSK4KS03caKUHBBoBPTkuedpK+M8BdZ
	 QKgCQwX31BjuiUHthNNmLDh1twLVW0yYE6NhVJeu7CSd4eSDGKHFXxnRRm8gJQg0OU
	 kiuAtOEQHjxjYkAZK4yNKed7v2dYNCr/JxBWfhVlc95sx2Rb33ckERjR/9CqMksgz/
	 eKACx3OhUSEDz2caapNPqiXRskYmxMJsU8ki1uXgvIJyYFLgXmPKVheUymbLqsZ1VN
	 7HkYvNojB53OISZM1IoEz9zEcEMK3DiPrF6xORPIS4wNcrB8B3LahbDLnKjXvcPjUi
	 5tNBu3KPu41rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90954C71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966899358.2169.16914642749663445552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356cf53064576b4d97e42421743f2d6352a729aa0363f079b15fb88d3f73ded4
Date: Wed, 11 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749668993
