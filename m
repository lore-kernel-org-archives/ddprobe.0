Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E1F3168ED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757498994; cv=none; b=I6JNW7i7cmh8+hs49P5+Z3bExhlAmXL+pdSV/X11wC2ceNbuiJ1Cs2ZX/qsR8d0XHEsEPnqbXEw5ErOpjKS4ZpCq6LzX9dUGCCQOl+7NUnRgeG0NaBSpVsuE+C3AtQOoydS6T4tE2IMjIbvXJDKGu+w1Wi2MKJmIxU6v5mSnAHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757498994; c=relaxed/simple;
	bh=YLtU7RK0m6D2btXusPuPcDBj85IeT8ZIHNAwo0Mq7jA=;
	h=To:Subject:From:Message-Id:Date; b=YKK41Is0JzkzDMTPWeIPdAN/5fItZ5m7p/aiQooXqORRBQgNDVkmTq9RG+tXx3LM+NOg4oY4sF1rXWaigUXK1kkFwDjH1Hpi21tJjcv4cMWYKDFt83qwYmC074VQChCcvBSuJgxgDWnJC7Xaho2vUY9hIdrfqewDAye4N+6ZiAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9OX47OL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9OX47OL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CA8C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757498993;
	bh=YLtU7RK0m6D2btXusPuPcDBj85IeT8ZIHNAwo0Mq7jA=;
	h=To:Subject:From:Date:From;
	b=H9OX47OLi1NIPyWL3ArPcQ6xgHIJuHuJg0oUsRb0U01Z+6jBS1YuRIfkn4lNqfI9S
	 p26Me30E17FyFwsnlz/TFJCCPsp29anu4Mx4OYYfU3h/8cjPyHws2Hhz9RKYhPT3CK
	 GRu4sg1kFk/6xJ77InS/55MRmFzVa4NShULerYEVbNyW9L+bc01CVIz3ri8CxTbQNx
	 Rk38d72zRWZVzX/OPZvAe5HVszO6pKjBqE9AgRqxdjWQmDWbkbm1W8lHWFyLhVNocs
	 gSwDzgHneSTyPQ4bkDqf+iOF83TB4rC7Lw5AEcnCyI+vFNStJqSi9N50Ywb/YZI+uM
	 ChRYhaBdvaNqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B17CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749899359.21093.15956909113491590337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66bd56b563137ddb5cf22415579e6163087e737b4423a047944e61d62499f214
Date: Wed, 10 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757498993
