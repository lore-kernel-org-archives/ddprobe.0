Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A82034E75D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784243914; cv=none; b=Jf5qyNs8byZco6Y8xnebwypfkJED2qHe7sjxEi6iTFq+/m/zIvCoYfDSlEFhAv5EycoqiryDvhelEp2RMO7rKTuo/ci70fOAQqmz/VGCpOIgNmERBx8KbAXa3iMQDRwOW4S/zFWHjNPe3S6zTF2a+SqwAlcLarEGlnX2/l7e3bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784243914; c=relaxed/simple;
	bh=8PdiTbJUd6AQLW0bFoz9j/EIuOcnDPbPNvN2MtHjhBM=;
	h=To:Subject:From:Message-Id:Date; b=MYBb4c/A1JhUKq54c1pozQ6oC0XeBPWPQaPsduKTyd2l6H5XEiH1Wl1elT0k2ZjR0vPxm+KEONm1Cc5Jv+aQv1ulXqI0xGlGmDW0OsAFL1zycKRQ2Z08P8zHGz55hWzKQY/VVkWYauf32nKY6e+xMhwNZTQ58RiTS/Lvwl6M3i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D45wFp9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D45wFp9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE19EC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784243913;
	bh=8PdiTbJUd6AQLW0bFoz9j/EIuOcnDPbPNvN2MtHjhBM=;
	h=To:Subject:From:Date:From;
	b=D45wFp9eZBsB8YrRoa8gRCBGrb8CCI7lsLBHXkBgRsLIzvbNjieKt6HyTyEZ0XB1/
	 3nsrKNAJ5vXZgLEdvLxRvM/KKLMla4gX8ctXSk1CV/pivHBzam2GQMdlmYCfsOHKrU
	 MtE+lbg030v+mcf0MyOuyUzdZNxB6ckhBs4sJSyjX8SpVJjzbQjGxLbiNH+TM0NB6r
	 QcbyNetvDQHqVu+R6zQDd2VfeXAiX54rBK0YvW3vhyzUydUTL0qmBYDFB0nJyJsYgO
	 gdEoahwHDQouzjhneAaT4XASKgyPw61rDeoPShrqTGzjxEiKGaEeAUDEP+3vEqMyQc
	 iQjDs+slA9wjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CD3C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424391371.1095.4561061181124678504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4872059892edca5d130e234626d7bdefd9f000532b17bb48189491df5d584724
Date: Thu, 16 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784243913
