Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263BA7464
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751951994; cv=none; b=R6QcT3NV+/bQGOWX4rry3UIvuxl+7FwxQBczr6RNQFAO/tEfiDb1/4JHBX8K83WLxVeTCeO28wFANfegxWdslfBn5ZDWuewko8Vyd99AXLgHKxLljXn4uwo8KXRDQLqGG+hh/4NPUdq52pQQXVzu7qBJV2l6cUsNYpy72SAoAZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751951994; c=relaxed/simple;
	bh=9N9N8rf8uIPQIxeiNn+vz5y3kNrWI5y6Q4UM+6W0bHw=;
	h=To:Subject:From:Message-Id:Date; b=YBACxI9bY0/iUBk+qNGwZhHz453s7HtZ6Z2q+7Aw6kbaYdXPytskmykqXgG4uwkSq5xKG2YgZtowrOmkAW7bP+seAGosF5Z2zsmdgydykGpEVWjRUMLVEyl2oMJoiFg2dLN9hGZx8O5M+9COxKGFpdZJO4Txe0jH7QAk59LM8cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1BvPvWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1BvPvWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751951993;
	bh=9N9N8rf8uIPQIxeiNn+vz5y3kNrWI5y6Q4UM+6W0bHw=;
	h=To:Subject:From:Date:From;
	b=l1BvPvWslhZKKK+P5vUHflWrvkaxwtDngwTPdSTZO8AwTOB3gflQvkT8u3EZfxBHY
	 mnYBCzocQy1sYDml7D9Bb2HWPNB8LqR4+Xm1N9cdyzmn3wpeQrT6xTUcBsQpdTSFG3
	 WE3vZ5LxCJVq7CSXh6Fi/BiLvGpjeVqt8+sGPi+xHar0h8rOu3b0Z9qnISJ0WrUyA1
	 ZgFZVnmQq7rt8yVowOkTj5FqCuUeObkOhT3KEUWksvN6/6l1tbnu5xmDENdimmiotC
	 +5voZvIFSYxkcG7YrL8NsnxeQhNy5O6YyZPiJDRLZSUHfnd+Zt3ojjB9uZXNMYInOg
	 YseIylu8EYboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2DC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195199357.23110.4121198994246660951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60069e71e226d0daa385c762996496c7eb369d71e1ef7662175e347e8e982799
Date: Tue, 08 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751951993
