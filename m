Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3678123909C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776998854; cv=none; b=XrwDsotIO5QeOKnPrarFHz9dzH45QBCfX6bq9KUczDIfA5QMR4ptPVuJA6IEqJBbNd38EoBtde45TgqvfZMu6GdzJF7yEyDMrVmfg70g400J9QtHh8IE/nGg0oC2O8e3g+UU2PPrYHQTT5dxpYOQGfKSx1duop3lcQIy8pyE/xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776998854; c=relaxed/simple;
	bh=o0zWN2bxmVtlhbHlTmBCjgOYoMa9q4JYlvkQ9sP/4sg=;
	h=To:Subject:From:Message-Id:Date; b=Cj1wi6dEZXtalPaakqeFLeTMey1W4g/maYbiCqMqBQNANStXwzqXwJVAaYOSdQNBhLTs0r0YnltQsEyPSnmiwbe7ylHQlC8QH0pi57DKqOEy8vCxQJQaJTZ9TWEgs5Ihs4B7WER5pZ4R9Vg2UsHcXe1XSlbpizUQZh4/MJTb35c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDZNpWDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDZNpWDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD590C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776998853;
	bh=o0zWN2bxmVtlhbHlTmBCjgOYoMa9q4JYlvkQ9sP/4sg=;
	h=To:Subject:From:Date:From;
	b=aDZNpWDFDBu9kGELMHIQQh9U03TtOy8U3g2JrUAQX26na+AU3kToQgYcw+ucV4mok
	 NEUFYmNFmS26rr3E9AMvyQj13YhTVp8bzN7opjeWpc+EGujmO9Vx7ucM8ceo0owxHK
	 IHUwaDHLOa8BJ1rta4xO4JHwFuQFzggjW8l/63EDv3gwb6xNscf1EHEiaAWF8dbKx/
	 FnMdYwXzH67mJPuGyavu9yp2r3uQx6OzszHv4vOPD71rHvBLqdzWN1XUg7fhq9FtZ6
	 AORbhoWvJl7ctFTK4MBfvQNdX6VFdLKNphJ1mF5SkZSaY9ALxGIQirMjufcFEyR7We
	 nQ3m6DA7LB3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EAFDEE5F
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699885368.27609.8463430420155878279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276ebdf56b6bc9d2716d879dc47b87741db1d141208d83a9bb18da1801466b84
Date: Fri, 24 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776998853
