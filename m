Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C177F482
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712656697; cv=none; b=q4NGs0WAMtl9ZplcXtikZdwb6xXXr85zXypbWj1qQMw4/0/GZhpzLKgiEqaRep3H7yWGPF75tkWKQcRCkYRnnk8nW4OZGv8T5psPVwyDorkBNhB42CjfhG6+BjBN39TZFWCqsXh77iF9Wfs8proYOg53U+HG4P6W3TjN8MeLksM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712656697; c=relaxed/simple;
	bh=8Kr193IxKMh2tjU8Mzy9QFpBd7bTE2l56dOgtSeGYNk=;
	h=To:Subject:From:Message-Id:Date; b=FBAr+z/prP8RsX3Sp1DKalwbSx5erVeKyEkY+TclpzBqcUKZJ7vdeegWrab6X92jwhNbps7zpajNabkoV4cwsqHyA8eiizK1A0mcTTD3vPKWu/Cnyxj0VrW0q4hIM3udBVnH8CixKk9RBPSmRtns+rQCjbbJNEEL52nD9pMy4F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FW8wxSyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FW8wxSyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DC4C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712656696;
	bh=8Kr193IxKMh2tjU8Mzy9QFpBd7bTE2l56dOgtSeGYNk=;
	h=To:Subject:From:Date:From;
	b=FW8wxSyqAjL5KhdBkGDcuoe7tn0yeEhIUMZvdXugaiwuZWLmPvncgefvkqjqHbgjG
	 LThQPGv9aqC73+ejt8j0pKw9P1HlcZv/gmfEXT1vFl5KT7Ml1JgwBZogF94kJVlUSt
	 gtY3Pn+eNqGdYNyrrzmqVmwYzP7t7/tBWfyRraJduJFTkHoNqYSBK9iFuuH1/EgmCU
	 h5nIy4zyn573MARf8cbtj4CLHUuuOEFj5VXuKdIY2tUi6Dl9Aj4rLDL3JL5jDpBDXq
	 VqpJK8U6Wvap0dCj04QMW6aX1t1Lodkzm1SpEpTx3bBbRt/Te7sZAaQKjh/Vv60uNG
	 /wFrqNOONcvLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 747C6CD1284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171265669646.10959.11314152109818591890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0b0dbca6472b9ca2aed5f444e181d88867cbce7f5b2066d2ab86c98c432bd4
Date: Tue, 09 Apr 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712656696
