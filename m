Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE29B2D73B6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764261174; cv=none; b=jx8Lyu5ySUHEi1zrVv1aGGsSayhzcD7FLhPw/HIAyHqrH5FsY7ANoD4wohudp6RP1PFVS6MQ81BjRlhf4nlMT0mR21IYBkp14qiyoZ5YRhno5dwnWywA4Zw/cKzOGYOuXI1thi/uKIarGC+Tu4s0VDwI2njEuuxYs9/PTrYJVH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764261174; c=relaxed/simple;
	bh=M8qtv5sZAmTNrggFXt0MYLGBr5v1jCGSf3Ej5qhfmsU=;
	h=To:Subject:From:Message-Id:Date; b=pLwm/KEvVLtMCPdPRcuhF1IskJdcGjdUwumjgMQ12IFgjIZlJbK1QDPE6cXNmKOl9bsAMhW3LBq80xtvqwx07CPVnwuNhKLDgstHv4pHUF/I15fPPmIaSxUK5WEHJdsRP5qslWwFQ2WUa7jfvw/bLdy77l0goRmT6DU1QPkchpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+hGc5z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+hGc5z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B425FC19424
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764261173;
	bh=M8qtv5sZAmTNrggFXt0MYLGBr5v1jCGSf3Ej5qhfmsU=;
	h=To:Subject:From:Date:From;
	b=L+hGc5z5EaB5XnM/4UoptNeMx3F3cpqpUiGqJN/FOvhr4r7DVZ+/L/B53+Yf7uhJO
	 qNNvydPB9M8vt93MlEu8XGOOvzIEPmL712WwER6A6YabRO92P3jrBFjl0cB1JTJj4o
	 V33o6mKRobs8NS4Q6RBHFMyPCqV+SQ7RDr5zbKPPVIKF9Fi/Y6aCKBUJPMQeg1HMny
	 535UgekUypMZep6R8nqFXVEmoQhMn5I1vvyNi/fhuMWOBRaj34BoAe3k4E1oB4Asc8
	 b8nUgmjnnP/zAlzhvXx0EbE6dpmBs8MtYGklLaQvgaIt+dKGa8oXD0ZWMihbKFg5yq
	 zManddN64S0Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FED111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426117358.13245.9823904351851615908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690ddb59693a35a6571110386bc690b3bf21856550d2d7f636efed484bd26c66
Date: Thu, 27 Nov 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764261173
