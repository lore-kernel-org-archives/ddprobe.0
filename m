Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249CDAD5B
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724471754; cv=none; b=PnVPw0iPdv7AUE5u3AsxzUsputF4nUnZV6IYga/JWPZqisDqJmR+HtBfAenqn9I0Jwg2wxauCgtzEKtPWq6fr800n8LFHGRzQ/i9jLo5xxWq7j2B3Cew1kTcYhs/znSPAIdsXKQ2Csp3v8XimJh9gQ/YgCymdsCbAZ0POqPYx3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724471754; c=relaxed/simple;
	bh=OxXeGCGzLnTKfJ3gnw/9H76cOZNyF6PXoT5BQst+w34=;
	h=To:Subject:From:Message-Id:Date; b=bL5pXWlC4Inc5+y4id7zEL9/8NekIdHaD7ZvUopZqH+yvB5Q/sEadWscB3Qvd/8/GxsGZXxNgCZFfS7Ykt1pNrLM/Fh0V2US3Z66Vt4LfJPuwmCvLIG1BxcQAqvNNEHb/vutEaXW2LXctf/5lQahoH7seGP5ThaEwRXqc911D2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIh7/dwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIh7/dwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9069C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724471753;
	bh=OxXeGCGzLnTKfJ3gnw/9H76cOZNyF6PXoT5BQst+w34=;
	h=To:Subject:From:Date:From;
	b=DIh7/dwXFmVw6CYuI9QtkfbuZ3uoLKxBDHBXiB35YzUexbyH+K29+Y7g3foAgC2ML
	 F4K0hEiJfyEjfrR4ZtIGnf62WO1ehEdq9TuWY4Y1oADc3Bk1wDMWQjbiFfVkL6QPAj
	 ugBnS3OBdRBNZ+S9wO8diCM6MAJ92Lu3FckA0/b59c6h3NQb3Rfdx/jAQhw/02FOuH
	 2f1bAkBX1j6dwzZxbz4w5Af9TOaN10EraglmX/EXW5BljgSMW+8kAYmNgtWiwGgKJ0
	 IuUitjao05dp8eKu4kdzHVCxDzbFOOEuwrAJFYGdh/iqXbj0vpgIxdZkd0MfbCZqda
	 6R2NpSIDG61wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C4C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447175359.24833.6954532367920038986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc0c0051c4dcf5d6e2552ee170a16df6c29601c8ccacc17061d28a17994d204
Date: Sat, 24 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724471753
