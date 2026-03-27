Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08793090D7
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774654493; cv=none; b=i8V395Mp9BRPaVJrdexPwzLnpGuswY/P3n2IlRXd0tl0+c4iG97n7HhCX0oWG+QtSdRPoH8OdXDOAPVy3mx/9eSWXxiC6xCVp28Z8zsF0AqhTspbiLhcRCj3jB/sh/LU0Xb8kahrNx08uuKCOqck52QirsCeQXT7VqhPqp4mkTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774654493; c=relaxed/simple;
	bh=PjdF79lJmkZBgcWL6FStnLGAG1qy8zrP0SlrueINlHA=;
	h=To:Subject:From:Message-Id:Date; b=Kh4/8NUKH3i+pbTBRd3Vp33ljVqFrjeqcXIv3ItAR0pph5sGPAMh4wLEbRAiFaTx4b8xD1gXo8Gkiu5UJza7cnUU05yttdHwDr806x4nViNf+KEbpxUgBeLrpQu5q0909sSToNJqZKX4GuVFDSw4zfI2A0FEgyt5M01rU75fLzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX4Kete/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX4Kete/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A7C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774654493;
	bh=PjdF79lJmkZBgcWL6FStnLGAG1qy8zrP0SlrueINlHA=;
	h=To:Subject:From:Date:From;
	b=QX4Kete/CXYLywpCjSrBCR/1s4fRjq3XBTDjNjdveWQ+meW0KUkV9bq8JMoGmzYT8
	 0dIS+zerlUZCh+/EH2z8Gfwts7IwRgoFKhIIU53RR74llQmHU9GlvM6Iv4HMsKR97x
	 xz1r0nrDrs35bd+kCbXKv9ofjOZ9YUC9cTY/lfJm4zI9CDFyywcJ30L76dbCSLaonK
	 +j8EH+qzJBHqITasBBYSdEQbGJbTlA4g8abj3rjKd+iItQsTejVoNFm3FfXa0T6QPi
	 nxU/z1IEw+gE8jX4ptCG6A+Us2fGDWO7hSD4+d2QzrOr5gSItLkBumFyz2WrqZyQn5
	 UiAcV7YDFYtJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB610F287C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465449358.29657.860677275775362339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d5d247a51bdda89dec239d24286cf01152795f8e700b7cadb6a839daf12d59
Date: Fri, 27 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774654493
