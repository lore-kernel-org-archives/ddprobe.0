Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A932BE7D9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761530994; cv=none; b=qRjxvzhrRm6HqmPpbCrLVnLp1E/i/rEV61D6QKvRCimYG+FaG87YesGJ10tbWWpLV94THD9Fdg34iQ8fUUqLq8rw0IsbqEiaXhz4VpinA6FAFrNBUrh2SpOOhlQKMQeaHLJXMmksTBwmbt7fJFhZyVzeyqNyvF0KtibYWcKV1L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761530994; c=relaxed/simple;
	bh=IkWPejkTpNJENgOJffnMnhZFXTlnLhhXWRH985NJpXs=;
	h=To:Subject:From:Message-Id:Date; b=sw1Fxaki8kBZdo4v826qwjuXArZz9i7fWEA+EFyg0zJL1FnuGjVmgb2kyxGKfEKiAxO30FrRfMsJOVFdRfAoQyZzRlkIVLNTH097W4ppdft68x1dAfA8CJydvuEV6rI+5wZ+q3GhFklNmGi5uqgGrnmH0Ky1Gl0jTcF3h0yq0mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ob8WwnW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ob8WwnW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761530993;
	bh=IkWPejkTpNJENgOJffnMnhZFXTlnLhhXWRH985NJpXs=;
	h=To:Subject:From:Date:From;
	b=Ob8WwnW1k+/Z/frnhzfAvVE+7LQaAZpVQPhotUa8EZgI831Ub/ywU80apOLqOLxXl
	 AL3eLwAGTykf08Un7zfjwNPlx4Vqkb/i5/wr+8MiIhtiWn8mE/WOiQEAncFdYBi6+c
	 avXjKen0JNfpMqEvmKxMFwNen9FDRv29kftI9bpGp1/ysaK8zGobuB7y1KKZJ2elEf
	 J6351Xq+Y9l1ofH5C24Rz4labBZ5MQMYyVHK5Il+Ceaf1dqC8wOeWkURCSwXKgJbrf
	 39TLZDfCpXLeRkqDe6Do1JMWqPYyhEGA8FKfa78tGuMkS5iCvqYsOthR10hZDbLLdP
	 b4EIiFgl6fQcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9478ECCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153099357.25357.17356098007412230745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b677c5599466b2f169f87f05370412618d56a57763cf3f65bef83626dcb390
Date: Mon, 27 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761530993
