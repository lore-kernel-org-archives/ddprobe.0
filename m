Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB7B2DD5EF
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751995193; cv=none; b=cy8zOPjJAhKqH627UQVPIlkYgSnZvoUifMt7O6XptoUNKw1utgqkLnHRctoWg4V6S8ipTrE2eG7nO0tRyoNzu8Oq4nLK3gE3lqKm6Jk6h2IGCu+/17RcVvFIro0gJv0zeCwTkjJxedpwpk48Bqnis/Raq5ZKoMY8Y0rlO2EbEfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751995193; c=relaxed/simple;
	bh=CkAOTqj7Y1H3BV5fFIp+p83s6ft9gvDA2aQ4oFn3JA4=;
	h=To:Subject:From:Message-Id:Date; b=BA8r4Uf6Gb4v9FfY1wrbLSMiZBox1cxgMeDvG8sp3PzT1xRuAeXNWoBqkyY/dcX9M/BWTFcSCJW3qPjdGTVnCcDN4AouMPGcpYbIERZtqTIEeaQpxt38czqBYhQ8lnownOpUXe9HK4KmVfj5SwRpX5Fc51/Vkgyc+zzuxT/1ZGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufPO4m5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufPO4m5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A215FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751995193;
	bh=CkAOTqj7Y1H3BV5fFIp+p83s6ft9gvDA2aQ4oFn3JA4=;
	h=To:Subject:From:Date:From;
	b=ufPO4m5nUplwViUTf6YSqf85sGKnI1k/bKBi+p1xj4n5apMGz41omVXRbxqlJDSl1
	 XljpuL1BX+uRbJAQHZqCBySqub7uYwSpt+LDIL4IvTfV27kopctrT4cY4oPe0UmClT
	 b9gMtcwdsjfzsWQGADqxorDI20daREX+yWH/Y4Aobu159/q4J+qwDjocKlQaughsXM
	 91QanY8U/3fcv56CAdEjGST4+2wPO5A5Qt4IYMx8J2JHh9+lSVWMEU08OhilumIDxQ
	 a1yzI93CqxkPKGJvVRV4kxaWAwlG57q1/hUgEeBSRW+hdFiMuD9FT9g/Vvo3YmypPB
	 TwZhLeQqQXhyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90910C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199519358.29963.14730456885930987133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487d143a0656cd23831432d8d24a5c9ccf709938f29f2698e064456ffde2e159
Date: Tue, 08 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751995193
