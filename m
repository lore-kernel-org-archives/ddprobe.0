Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D451136E21
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732139754; cv=none; b=LQSaN7Re78PmaHfo7BJDaiW0FWzXAsn6/pJfUhMC57KwHUoE5ZmHAjEgCWMbxkjsHhhy05enUrIdoG1XMQm6czRsTfsfXCH1Q6BtnvRCi1dDZgw7oSlFmUfpCWGn7nkMr+WGeJMJvWPMBNQedTRmukavBBqJ6U5XK/5/9do6lAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732139754; c=relaxed/simple;
	bh=zwUJgc8hjgGfYnLQm7wYYMeJFQq0XGbFXgrw5P7ntJs=;
	h=To:Subject:From:Message-Id:Date; b=TjfHRmWqz9EBOSkC+KQ1biWNQo6H1dTvDxLlX4gClZIsLVYolqXEi9bRLLGfLB0K6cuPKs7oDMiM4ZoKkDNgGFXd4xxyW1AyqnZqsZcK+ecbJnjmS8QaDpegIQgAA5gOuAzQiP4mwlBkyH7mz7rD3yx+RZ0UPlCgFF4vgo/h8ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meCzlsiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meCzlsiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB7C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732139753;
	bh=zwUJgc8hjgGfYnLQm7wYYMeJFQq0XGbFXgrw5P7ntJs=;
	h=To:Subject:From:Date:From;
	b=meCzlsiCdWb+No96XyGpQ1yjnOq274MoFoga9zxgpmGNq0dZoCnZz7ClDHzvwAhd8
	 4MCWSnpNyNrvarv6QCfqMZyYe9vPkKhDU4eoMrGUIxbM2EyNclQUFacgyRrrs/2Jf/
	 45LLR4J7KLrd3b/ddVkfduYvfnIiCWrF/7D0XztO73FQ+nOnE5kURi9tlNsn0/R6np
	 SJtx4I0Y5D+JD2pcMSml9xJ/q3m5C6fVueIQr6kf5d4uWqzcChM+WPYCB+KDQ0Tk9B
	 6qYRxDco20Ae7bJ4GgO3VkKubMYbSU7G5LnFpLAuvL7R/jFqEZ/+EwKcsnRvAe06VT
	 FRPU5g90jMIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FB0D743E6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213975359.5941.17754454036128618266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50277d3a428d45356058001eda04f5fd9104232aee1541fe9d4b58efe19409fe
Date: Wed, 20 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732139753
