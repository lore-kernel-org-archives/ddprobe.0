Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF8E1F12F8
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739266735; cv=none; b=Bak66ys61iC6RjCkc8ACX3jRWMXDa1xi1NrXbIjLfGc/N4Exlzgjf+LxpuKNN8l0jmswB231mciWyXAZQXX9sanlGLyp3xuV/qdGusk4WnC/NJ3X5ugheNmjqdcaabQj4sx8CPiXEvApLVPmyHAAvyXLUcYgosn/p9vJL2BkEOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739266735; c=relaxed/simple;
	bh=ZB9YoB4qYk/mCeVzdLEWbdSJqn2zzBTNTAIYY+c3zqE=;
	h=To:Subject:From:Message-Id:Date; b=Gc8ug43vB4VQTSpbiMcXvLdCjj8KUZNoxiz0XVORcXLH0tEJBi0weLAwVy7qhwk2idHDg6nwWfSRfpkJc2UDIWmqwG+kZHjRZL264aVIVwDrsqKkwslTmMIpLXc9vN14kLW7DvMAN+VrvP/rJLODFeWa8qYggS82qgw585i+Bd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQmQSSt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQmQSSt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E93BDC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739266734;
	bh=ZB9YoB4qYk/mCeVzdLEWbdSJqn2zzBTNTAIYY+c3zqE=;
	h=To:Subject:From:Date:From;
	b=aQmQSSt96d4AocS3sjjweQyZ4Iz8LOCr7DJWZWffMM+464FGKgZC+mBOrawYIr8cG
	 1pZpYnX/W+xd+yddXInAISwrYg1x9+e109yFCpuUx1IU8fnJ7fzV7wmt6GCohv038K
	 xDJzK+Ws+KnXReY67OhWT6fJElRZq0fRc0RC8B1RToLoK9QJAASWtiXvrBxUd5rJ3c
	 oc0/fEanXmB56Hf+OncUOwFJBwS4DiRi/SdHAdREE1RwvsUaWw7tU7+FsMyI8VdjM8
	 cGHIOFMs1hhDzKiay82bIPBR6yQA2FXnBj+AGu0ZHIsGtHVkaEPWJ4B0eg2aaZ8DkA
	 BUsyivR0MZDng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4745DC021A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:38:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173926673423.9953.12515712077935407298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101d6a3de78165b8d9562be0ea4e30c7c01f90622a2999d8ee56b996c6377cff
Date: Tue, 11 Feb 2025 09:38:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739266734
