Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274AF38E8AD
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779391954; cv=none; b=OmqaaRGiepL99njxdBxtm8gjJjHXEfZLXFOwJHNY4Jm8nBd4aiN9xV5t53o5Prnmz4rymi5ErBYS8un14FOf99zOf+cimN0/M3xm9B8eeUlgxGW43L5yJX6g0d4a096nBRiR8KRboP0azEkxUwkbWLkU+0/YWFUdzgcK/6XsSJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779391954; c=relaxed/simple;
	bh=NhA/3z6kRBp3qxUItb/VXZbn+CB4XCzLfP1nedVHlmk=;
	h=To:Subject:From:Message-Id:Date; b=K9pMttQvikS1OyTJrx5a4oVEHkud1kojov+imrU5ZQMnMPX0bpWWgDVDuuQpCYkEpVpJkKy79ELz6Z5b0aq57pDd8r/oGJY0DwzSz3NamBZ1d7tHif9shVaPu1JGOvEjQU4yI9OOKISiWRjC2N3PGvHih4adVZMQdiMvEwYe+qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOyGk7JE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOyGk7JE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6059C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779391953;
	bh=NhA/3z6kRBp3qxUItb/VXZbn+CB4XCzLfP1nedVHlmk=;
	h=To:Subject:From:Date:From;
	b=oOyGk7JEwvhNqG9bWGL6aO2+Pd4hU9F+EsdXvEzWOuG7Ro9LZl7jHs5LKgY4o+aiK
	 xwc2seavPMKyqbBtNILP04QDD5JGjodN3KRI+YgUhnJ7hv4h+hDjtSJlPORbaonn8M
	 kkCbUoxLd6paGz6oD4Cv3Jr04Z/c4KYuKLl9b/kfcovPzYNzBVYmw90RubSkmK7CB4
	 +LV74fAqayrNYicjjdeITZjcx+h+4Ss1vrn6tYo8hfZSql1tJ3NojUI/oFTvgHvVHo
	 qJqo4RiG+5msOXh0hxjbjRUoWkmJOuDnkjH/h8TZY3FepUS2w/hyLuwyXkUopY7jpx
	 o3AEet/oMl/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5BDCD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939195368.30002.1108185228675955724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55d1c1e276a61ca75fd5b38d58e24ce0defb1c51a40b27a6cda2c5d802bcf51
Date: Thu, 21 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779391953
