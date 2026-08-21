Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FB0413786
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787293834; cv=none; b=Q58M3T6QFIBLXy7iExocnc4JHniGFwuddgX/S5BUkzPqQd9DfPiW/rvIAaQPVEgVWHNz/rT6RpDZLj0An2RnCjylXg2MQzAtulEcEbhhDNW56k93IeGT5KPxKEuFhbhsqpGlIEFTdXXB4mWGHJIS5fzV+pfOJJdeuDdK65tmqe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787293834; c=relaxed/simple;
	bh=TIs+3jhevqtS1h4xvpKXu5nv8WH1njWjnpN/mdAhN+k=;
	h=To:Subject:From:Message-Id:Date; b=rx+F8w5y/1qgUwQD7mPzrz8OVXzOjGWovVk70fY124blli9IqUGZBfnydwlqPQAZAyBNxMPbUDU+8F2ud9Ib6ptbOpJ+gm06CIB/R6jJTfKaWCEglRofD9H3vr1fl3s1+NHDtgyuYeasdWgNlnQX3SjC95f7vleYXFiEO9g2RRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mks+m280; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mks+m280"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD19BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787293833;
	bh=TIs+3jhevqtS1h4xvpKXu5nv8WH1njWjnpN/mdAhN+k=;
	h=To:Subject:From:Date:From;
	b=mks+m2809niQejpBFQX0vZ1sL5xICP7fflUJn4Eq8C3CLs6X7pkdAGdjFeTTIuHxL
	 C1o/vWgzbcgmlSmBPKHcjEMwH2/Jibz6Ll0FScwAomrafqDJ8Bd+Dcf3Qg9WSCNwA5
	 x/p6wiMQKvRw7p/231NSl0IP9PsHbyIjJ6rDyrCMiIchq+H02q6OOWZd8cuf2nQKN5
	 HwamVsaa+1q/40AcUbrvqpQW8GVBNsOu3YHt0iumY7aZdlHN1LbXimnNCIj5kru7bt
	 7vk/MaWLZ6eREWAc/xKyn9MIE7REpFn9bsZzya7BaxRZ6uCwCtLBDkLBF+Oh2eM2vz
	 nYIUvDOWoza5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D02C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729383373.31271.16442596779813223148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b063d9fe7ab9f198277c4e04fbaf5e9824c31ef9bec4a021d3e899a3c54762
Date: Fri, 21 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787293833
