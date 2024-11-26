Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274E628F5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732632954; cv=none; b=FpdtfRtd0kjLgGLvge2XTteMNBkFLG1RzrJ2A8IEpJZtpQ1rVm7tisk4x3galWzm9vQfpJ98CaGKwitRba1WfcNST0QWDbO/ujhLg0RxRp/sPEvPWQRVqAT46X3+nM8Q8z4zrSZI++PIVrhc3ReK2RmfPtch72jACN1JfZsNiwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732632954; c=relaxed/simple;
	bh=xwy3WMMWiRpTevFJz12UPhZ+OjHmEc6N7/Amfdhmj3k=;
	h=To:Subject:From:Message-Id:Date; b=GhHLZTIMlLOuq1dhPEdfPqPSXGwKs1Yty39Q0WRtIC5zXFm5Z6z09u3/zHW3PuIoAoDAFrJV7WPW35VXooRxMGZpVkMW4rZDlA+tlt5frRdTAUi8AUw3sR1L5ohVXPNWJXRG8wP4+P5xe7RF2k+Lh9/9vWu1PtQrhpJ1IyBgwC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUT1E0fU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUT1E0fU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55A7C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732632953;
	bh=xwy3WMMWiRpTevFJz12UPhZ+OjHmEc6N7/Amfdhmj3k=;
	h=To:Subject:From:Date:From;
	b=dUT1E0fUQRZRyPeDtNFQf43QZJkruB5GkFO21co1teYUAYx5j972BsOqPhz3ey58T
	 eQjxNnonADtNLFGwaoGJ7+U4bTzRikdE7Ehqg7YLF7YmGGiCO8HBY1Uiq0ekUbUS5P
	 TJBDRHwY4UWa1GZWBkSX6DYLWpFsFj8DeHgKoAgzqYLj/OeqZj4vVJeA+rcT16tfbz
	 qHiZ2uQeJ9Mz89yO6VsIMPnRBHhTWX1dQC2vPGZhhNLKbsa5B3hYlRmqoHNMT3LeCz
	 0lMQd9BfN3jW4gEPiCOR1AP5AFodf7MnJSiXGjfFwXhdVr1TwiWXkRlQBGtUzLDz5F
	 A3Fz9/poopllw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C48AD3B999
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263295363.9834.7306558821379227055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c519d7bcb557186098e2e5a5aef18131db6d027652de3494ad34892405eb75
Date: Tue, 26 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732632953
