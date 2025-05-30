Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E594262FED
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748627995; cv=none; b=cMXpR9t3HO4cfGMjUxwCuhQSSql2vFoOSKPNWPOkTT1ptYNG6rS0qYUQBsA6sykwShyMBzNZ9GQrufFw/O0OiLpiMQoEhNVFCO3hW8VEDK/eN7+cYAdYoEOHZ/mPn+O/Dwq5BKejtq4qrc4FAsAyKFmMhjDZfzxosSsAuLS69fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748627995; c=relaxed/simple;
	bh=8zuYeWJFZIASgFRBbXl0DjkODh4DkyZtzg1xzs+y96c=;
	h=To:Subject:From:Message-Id:Date; b=N9Tr44l4WUp+dO35WnOqSV7pWo9W4D6IaX19+bKKNOOo8f2fKMh8IsYPxJZIvCqY1BWvf9jIwA9d0iuDhGD0l7dgYvNbOhJ1RSdraR/TOqusv95o0+mliTGKE21RnQWeOidQkzT4oYOj85mPUG9ck3kxncLH9M+j7KyGlr4FVxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D90VE+7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D90VE+7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B9EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748627993;
	bh=8zuYeWJFZIASgFRBbXl0DjkODh4DkyZtzg1xzs+y96c=;
	h=To:Subject:From:Date:From;
	b=D90VE+7xOnkF2iiEFCV596FRlzaFTAVjPwpSFEa+Ex9iRHATJzDNdaEhPrjQUopFT
	 lObI63dmy5FpmAhuQD7wUJ9fkP/TVRI2h/jovOzCcvpcgrZg5FJ+/3gC4ZG1R2d0bn
	 3CFmxboVgpRCtP/LLtp9yzx8CJHBBhKtjM+R6RDZxvjIvUGepOTzj/s/Zmc9Eplqhf
	 r0XnBgHuZxwEJ7UIG91h7DBaHt2YYF/LoUqjZKyN8mx/JkziqORPqdHvS0uQH1E29M
	 xT7nDly076MMYGq9NTQ/fdCZ2SLR0o9Ovv/yjAN5K+cwf8fL68SRkfttjNI8xzUalz
	 s5sYvWzKoIE4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B9C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862799357.1132.2162353718650947465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf3e833753a726d79f2706148378cb11f6f06310dd7bc769ca6b1aa131be580
Date: Fri, 30 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748627993
