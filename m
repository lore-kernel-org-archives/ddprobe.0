Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8D5407569
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783723714; cv=none; b=gXUaz2YveErtI4a3aD5JcqFwTYbKhXPFD3Tcn/8QmFbJusiuwkDSMLSwoMG1a0/WjA0NfbUeSBljqJ6B0fL/gSi2ihFrd2LhSwd3ReOobv1HNj1t7+F6aRriI7LWMYTIfmOOtJeZmrVpIhWKZykRVtEALwbKGLlUDGCdfDggssw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783723714; c=relaxed/simple;
	bh=c7j0/hzLdrkSg1Uunby1ZqAJcuNYYG0GLBQUfOUvurQ=;
	h=To:Subject:From:Message-Id:Date; b=WfV/upRUvHbWQuA7MU6r3e3M06swPFjhzn+blwdAg8rDxYZw8A7eWdpBTTZLW84M4bJhkvom2O5jkIC3TpE7Hp2GIZqtLRhkuSYmJxUtp6PX2PfqssCvEFSvOZw3FDND+ZHDA3f7eS8ee9KhLsDuEbhHnNY2korGo6di7tWmTVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=un0zX7Hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="un0zX7Hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0003C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783723713;
	bh=c7j0/hzLdrkSg1Uunby1ZqAJcuNYYG0GLBQUfOUvurQ=;
	h=To:Subject:From:Date:From;
	b=un0zX7HcvbK1lvEArcs5bfybHxk3szVErZd6akmP1Z8J4l+kxeObV/bOoo98bEL+b
	 P+Z4fXCllz2Uzq+TTSJbbB3l1C45zp16L57xm9+/oKw8J/rvGNCy2KHuCKdwaID15i
	 I0FQcMiMMljvlIyWhbmLjfbA/GQCPCoF37CuUkdR3RURRZjbDYF+h5ZcE8WyRgiQuB
	 tlxlcHALuWb7fMOr0Fxvmu5pne1L3HKWSAYX5znqyKhMbWa+3sk4D6+Q+IYmWVnI/H
	 qF7vrLD5Ld+Z4CKxxoWKlmq7nfgCguvIArWeLOUZHFSssRHdxLjuQZbwopJlR37Wf9
	 BjE8dyzD4tTLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE23AC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372371368.9906.15676676202537801427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a98af3dd96da58f5558d08ea3f93eec3c4b566d870dd439a57866155136cec
Date: Fri, 10 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783723713
