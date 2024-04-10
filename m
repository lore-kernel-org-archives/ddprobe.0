Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EC417F370
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712777297; cv=none; b=aaJ7XdzV9BEHR9druRx0S00ABSWZ96MB797fbbpvUvldkCn7IpqmkatWviuBQ0qGbta32+N/0U5EBgnGmSidlbqvu7wg3Wo13iyWZ+WEtxoPx+JFwcl833tMeFE7FvUwE19smeXlxyEM1iEDaB9yWp81SqRDCdg1xZ3bAkX7Plk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712777297; c=relaxed/simple;
	bh=eQFdGX9BXg9VKbXfq5psLrVViKsz4dj/4bzYtRE6xVg=;
	h=To:Subject:From:Message-Id:Date; b=gFznSCdGmYx39wQTJmbC0vd+jbCRrIT6c1mutCW16gnYWvi1BXI8QSYJ0gvAqsth1+O8ej4TM9k3H8IyJ6n+zPvYSzbiiUkhrtdwIAIP4oMl0LBGzZl2jXqp4EJb4RjY0tuUyK8GFl/3yI+jIUP2BpUKLhuKDnyLTCAw8ncX17s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBfYHVnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBfYHVnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 931ADC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712777296;
	bh=eQFdGX9BXg9VKbXfq5psLrVViKsz4dj/4bzYtRE6xVg=;
	h=To:Subject:From:Date:From;
	b=tBfYHVnTrAGvBlu1vlT/wV10fnzrJ6gJdqiBwdzZ3vVcgzJzCc1FiWpZ/dQ+224AZ
	 gsbidrOFNWHoN3P05eHNSTJR6vf2N4OQY/2YgmZsqx827luAyUlYPK9rA/3Xu6+6oj
	 +yH2gUALWmeYdDAtslUlzd4j1CgJbkQi05y4eISdU2Yqj5GcKU6eH+hQbKilRGpA1K
	 Ogi2CpwUqU2lYQV6R3a5u+NTkQmDuvYdHLpfwDwhWA1JplAp5RPybpuFqBIg8vW4Jn
	 9Q6t55czbqYUbcI7BA9m0RmLQD81aMDJ9CSmCdZU5jfxykw7kaaqRU9NusQw1zY30T
	 PxKFwaBbnOX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75D93CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171277729645.24593.2610105581059816558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca16c81c20844f01b86d4b111ef1534179f02a3fc22244240f81d154a119563e
Date: Wed, 10 Apr 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712777296
