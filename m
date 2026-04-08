Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997B0946C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775607934; cv=none; b=ZURc1RC5GwqnnXlazOzJT2+uo20bsT8K5CSZFRnZB2DR/UUbgHwbs84AyPxV5bnCjx3qxA3acm1Yn9zBR7hGIJgFZZxzKPnyTGGcMItUNzW/HwX9M2gLWkUCXNhHm39evCFx+Zr0EvdTB8Gp243Nn2PXt00WVLKUxSBHkppzRdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775607934; c=relaxed/simple;
	bh=aiFdD9TZcHHgNEpnb+QmHMcWXWv0meL/Gxn8dcOmBgk=;
	h=To:Subject:From:Message-Id:Date; b=lTIiuIDFyGn2YzKSoETejeB9MadjURKDlnAEw/63B0LAPGPtrhYaJ3HviRwoob8/yy2fSHNyQK5kM7ck4keANt2wrV1K4nN8jQHVkpoIXeuLHvbbJsnm9ZbXzIByVgHlNRm1BLrtrFQ4yMSDlGccVffCu494uAweP3wVA98gbk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxB+5qJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxB+5qJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C1BEC116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775607934;
	bh=aiFdD9TZcHHgNEpnb+QmHMcWXWv0meL/Gxn8dcOmBgk=;
	h=To:Subject:From:Date:From;
	b=VxB+5qJIsM2A4p67SYJF7gz0QtnEvFD79Zlhfgj5OHHo6s8fCa3GwxONoX5o9ymjB
	 hIwaAQfFIBV+9qwSC9YlHDlhYUcs7MTLCM/1dSc4woAGC7CjoHIW3RbzKa4VPGQxCy
	 fQ/seQ5LG74hYEB45YAHlmosnbL3qKGiovNnYWXbroWTikO4rn7n/3Fys5Rq3qWeRn
	 f8GB45HbscI6iiZMqtToaVU74aLNmI/8Y0CNBw/F0VUhDxVhItq/9FWr9dJYgTYxGW
	 RUMW/haGe9KBZLLdxhQkKub7pgIsoxc3xH4a2OhKT5e9CfOFzY51MNDVlRrn20KdR3
	 KqPEWX7C5lFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB89FFF512F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560793387.16464.16294314099520366122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4325f0011880f7d9c21259ccdc56764c046e5709498eb6e4b3623254246bd1
Date: Wed, 08 Apr 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775607933
