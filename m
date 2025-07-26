Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3406FDDAB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753559994; cv=none; b=X69X7fqFwnlDOcZhix0QKZ/DCGF+tzvLBhmrHnWlhFINwZAmruY8xaNz/2C5POGauAfMp/zMiArPcboYGXB20m2MKbiWo0vD4zthIo8giWV76eqp1oLMBRK48O8NBCOnuqnotD5UZ8dc4DK2crVOH6Lhrrso+hG03l1MdGkSP7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753559994; c=relaxed/simple;
	bh=qK5zpjuBQIXYyqk2uPtU0kQbzazz3TW4N6VpQ2vMJNA=;
	h=To:Subject:From:Message-Id:Date; b=VoI9JX2c1zpERS5UmsefN5jSBxD2ze+LxEzqyb8Ym1+Es3vgjYrtUQDpitM4lPSQAYoivXUAeE+p22sJeqCShKcIU8nUeBtoqLFIIWUQWWvnxsji2/dNDSt1VWOJhvxSJ/di8Qmce+MR5tqlQKzCIuQQJzLxnFd7/l7tazhfHT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrQGwXje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrQGwXje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57FDC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753559993;
	bh=qK5zpjuBQIXYyqk2uPtU0kQbzazz3TW4N6VpQ2vMJNA=;
	h=To:Subject:From:Date:From;
	b=LrQGwXjeqiZl0lqniXdfIQaL2FdNtvBQ7WeNIVfYIblk9MkdV1Lafmvm7lqSeHzsb
	 oomJVj2UiWasdFYpz6FXs/K9k6lZxhudUjfUmB3KAVYgHdslG1oJ3RNVrrPjyQ9eNp
	 G6NchtX+2vsp3zaI8za3QI1BZskmNgn2HztBL9ywhL9NBzbGSci+Yt7xeENYAmUVqz
	 4IdK1JGjgaKyfIjScGfiXenCNYkWX2SIBr4sjADvOJmJ2rNxJ17r9WMKqVt9oNnuvD
	 mQ96Qdvc5X33vE1ym9CJ7QhLgLwO3QPquLwy19OhNwju3EhQsEsPwbAIXQjwU6IsWz
	 a1DCrJ8UuCg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518FC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355999357.8162.3165269353575862401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdfc57599d4466707f8bacca262234afde520fa5085204e3bf730fc21b9306a
Date: Sat, 26 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753559993
