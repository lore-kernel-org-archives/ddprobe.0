Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8E51A76BB
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757029794; cv=none; b=aq0kg55Fry6JuxZco2Nto9jUEHIQS7MMi8Wtg3bOiAonQhEVQwCE6n1WRL3Mvp2TaREn6QOn8qifR2lYCDkXySh3DAvPiGCyIr0rOGRRt7n27XO7DqPYUDMs/Nn/IejHs9NEjR/nQOHhV5QEgHzSwGZJ34FJMhf96Y3q6ZelbwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757029794; c=relaxed/simple;
	bh=r/6T5Tb9eJ4vcoEOJvUrs5IusrwhVeqLyy74gCEiJEA=;
	h=To:Subject:From:Message-Id:Date; b=Js6R1QoRovM6FbY9WuD9PnLMKOEQTtuMQ0WYjKCF8eHW8rZRoT6Wr4zMoBPvyMNjakNvm8yBWy4xTULvyQ+v9KmTfCmieAXJRRGFTbi4voXc9FQ5VE4VwuXZCUszmDzTLhODigDU5UxpFUfleXZ6+HwvSwxfqfPsuBF/gd5hV+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqWgCbMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqWgCbMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0F1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757029793;
	bh=r/6T5Tb9eJ4vcoEOJvUrs5IusrwhVeqLyy74gCEiJEA=;
	h=To:Subject:From:Date:From;
	b=UqWgCbMtHV02T0XVay+Fiyl4gjkn2u1r2KPERJ5z8F46NF7yF+jCvQ563aaLH2wtR
	 YetRxR5Gco9Qeykk89ryoKhMRLonx7mWnQjDFVyOZqaGbb4kDb17+oO5LKQy7U3Q9D
	 +ykMGcp5AoLxbfjLCGh3fKEfZf5MCNbr3LY73zIk73HD6mPJJM8HOLwI4+hdJoAVqk
	 37MAHlpPFWU84Drpia3IoDOB4iReuaUg0gSOhVqFaARUPwFp9FwHygtfAiUhhuT5mg
	 Cbl7I5OOLHQUx0rJbulkQc4ji6iz3AqKG6HW4OiRbfQuvnBLmwhw9x0growErfsT/3
	 ODyEauIxNA1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F6CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702979357.27159.31810074298071661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c29fc96c7f2e70cda077df362698b40862ccd3a33420681d6143784056a9eb
Date: Thu, 04 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757029793
