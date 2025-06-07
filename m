Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E73BA45
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749302994; cv=none; b=NkL70Xi6Mk0Vf/eBdxq2LoOZE8l6+VonkwvS5ZEIeZ1ClCL5+IrN8PsRhifXoldHGhyDl6Xv3Aw5nQT74d8saGtkKaFUTwto//gXEg0JnH9JEqV5xL7PQx1v9Lg3WNLVupRs0+DK7WqpgzV1sAAXX3qs75BYgKmFICI2uITFie4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749302994; c=relaxed/simple;
	bh=izPXrYHR2LX0NeDVIHGJRBbA8XAui44C60c6HC+QEd0=;
	h=To:Subject:From:Message-Id:Date; b=lSduO89eGuAmxU+3CciJyL9Q80kZ5iWgRwSqhy/L8LCCEq+zu/oQ8QkFYqgTCYLrTdld8gwT1mA/Z/EKkVKAjJgPUET9jJ9mo/DpWKFyNNRoU6ZrzRMZc9OafTcnQWnwWYGzQevlEfqCjFGsLF6hjrdlGIkbCh6ziA4PR8yeg0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz9rWC7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz9rWC7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B9C4CEEE
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749302993;
	bh=izPXrYHR2LX0NeDVIHGJRBbA8XAui44C60c6HC+QEd0=;
	h=To:Subject:From:Date:From;
	b=bz9rWC7Suomc735jEpqO2bG3NodT5I2D0m73iBATmc3ruG1pt3Is9atU+bA5Vwy/O
	 bbNmw7uq8+UMuqpo+0M/e5psDkZaFhbR9U3yDLQAk/rhZOluv5Kxi3P4Ad5FvgKQJt
	 +eEDWbOq5D9YbLmUUu/T7XXMzXz/LcpverhWw5+NC6uHjWNTlN4Rh/3zz5d+c75Pbt
	 /aRI60K7v/6DvfSsG2Sju9SHjlF6jzwllA/67+y0mAfGAmilS+D6fJd89NowS+DG3C
	 qrhyuobiWS4vc2cNFW2ETsvf+mmZCBCl8C6FF04kT+1Eu0hku8AReDQNu0GoTgTE/w
	 H3MzrpfOAAb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59CC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930299357.10610.12633840792139412920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c64d04ac74677374f7ef48d3ffeaf066672d0492bbc721ad4a5b3498e689bc
Date: Sat, 07 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749302993
