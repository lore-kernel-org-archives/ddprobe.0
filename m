Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DA722256B
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762588194; cv=none; b=bg/iZ1azxd9VP6bOGXfXJS4pmlCfFFzjYEAMNr52yoSGQNtvH0epaTw/rUmiujy5745IMYQihkhNyM9SCNk072WH1CV0JWwZtnmaHXPLYE0WTg0xmSzXUrO5ZpTP1mRnN5U4TkyYjj+DvvMCvn5xPEVQgWO4COfZ6yLuq2cs4ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762588194; c=relaxed/simple;
	bh=SZwH4JtYQvVt5LgpmlhVqWXWAMisTZWbkrTTnOZ2VQQ=;
	h=To:Subject:From:Message-Id:Date; b=H3HbHG36cB3vJxh/7fr/LD7O6F7j/YAVwvhU7AsiG6yFrrq/1vRInhY5PqKu3VBOg/ROBDSLZQZLHqR6Hj3CD4hyAqQ2ugNEEcOgAPSJTia4wGUVnQpAlBNp0KPhhbML+cYyVMvxmHGW0jhKcAEHBe6FOSPaZ4hmLOouI32ZYek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN3F5cUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN3F5cUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A099CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762588193;
	bh=SZwH4JtYQvVt5LgpmlhVqWXWAMisTZWbkrTTnOZ2VQQ=;
	h=To:Subject:From:Date:From;
	b=HN3F5cUb+i4KZFzhJe4BNbUPCe8Md5WUy+ADHFGiSElAjtEo9bSGSLlOnzVg4bIW2
	 XjhcVPfFAFqlfRm16Z1Xe3BpS5cZVjL82i0lBe+zxyZ5MDJ/l7cpef3tBXW1Bq3ap6
	 OYbqaMB2NLXehudZajFMVQ1MbAY9BAkwIRGHX9UsVM93YHk/4JaoFBAf1MkH7VEozE
	 K2Xqsu3HKLPRmQGY29vvqecIW5St9be/2OMTiga0cTNhbdmKv8Vc8+c8MWVVSybG7k
	 omVKa/La7rD1B13cDGerM75GvILW87tMlj52YqZ+GVoORteOsar8IsR4c1RB+Q37/b
	 D0sgFW5vKqyng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C78CCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258819358.23663.13047549045873558227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbff7ce510edaf74435050191530a6d2be46c7def376153294db35c934d5862c
Date: Sat, 08 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762588193
