Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6777219AD45
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721134523; cv=none; b=MEjvode5NHbED4rTGrVnjIlExctdALxxFlnZ3XrDQiw16fZU5lfa9zY86kEQwNa1Ww5Zq1/N3K18mc1/zHe5I1gt9hRMDbqJhgmbPqX60xP+MJfcjYhKvywuJSo0tArNIyk/WF5yqs9EJlctqTfrwV9g3mk4VSeXGiWr0WoFBPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721134523; c=relaxed/simple;
	bh=PwHOAZQ+fg2IoedzwXxJBx15eFfOs8NdqpBJgGp+Gmc=;
	h=To:Subject:From:Message-Id:Date; b=riiic+AUz8xB5fT1G/NQ1cWbCyDMabK7gBmz0qqltFrWsmHfrmitps7+gkYGVdGSp1BlrWw+VniJXjKrn0tHObt6AZNk/hLYjQ+hGxK6F3qEckggUIJTvwZ14b5shfY4+P5Ia/e81+Lf9S9hNraG8fLeMavtWZIzEz/3bbc2iSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ7FneMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ7FneMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC292C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721134522;
	bh=PwHOAZQ+fg2IoedzwXxJBx15eFfOs8NdqpBJgGp+Gmc=;
	h=To:Subject:From:Date:From;
	b=TQ7FneMB3ACcw0bx3m3jM5FLa/wSL3RNERpE1b+Io7cJcLWPcpjr6+CbwZyWxOgD6
	 FF9kKf1Nc7/eYyZ+02XgRfRParCTgf7jgg/QjCKXjEDbkw9gQ1G9JnZMMQ2SKhZhcm
	 i+iXH3zoj92b2MkgKcKYTwCW+4Nn4GyhzmqdXoT68Q+efvVaRPnMArrWD28E/kzVjC
	 8wi6n1Pp97ADj7/j8ip47WkKWkU+tvoanVZb/mq1Xykj5eEbsFquTU0KCMDiFYPgW6
	 GhZgX07fAwHJVuqY0dPOgv2rDmpPSSDsu0KIZnSTU34L6D38CSrVxvlbqk3s1z1m1X
	 8KjMcAWXaAt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D9AC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113452280.28359.12043154844267914921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08359119c6e03cda5aa69489157aa935c56e562a2938d1017b4362932cccf570
Date: Tue, 16 Jul 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721134522
