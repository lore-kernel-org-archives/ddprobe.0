Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698972117
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 13:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0740AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 13:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676728566;
	bh=kZN05iRUdclB4rNANiogKmNQLDX0KdV4zd1tPtFSj54=;
	h=To:Subject:From:Date:From;
	b=HZZL4n2tmPoOv8XeSVc+T0ipExzcySB9ntZ0faof8Mjg44Elw5yMOC25twMtVyKzz
	 Tib0LIfY1ONMWbhXeWaSeNuKbwOgKGP2eVVfa4NsjuaVQZ7NSGN+S68fAlD4hxJDd1
	 kmAJEEMNVegg38nEzbOb5etSE2kstUNIB56EyHIvW5n7Y/dHvc9jnqpD1qPYlAA6pP
	 bKJebzDdLVu3bjt7GCrDNS2g8lsfEzGjjJnEnHSt0a61ERdtgJ4GHCnjCNv1hEf9le
	 WWh57pet39xhK0eVuQW28Xi4mvMixjEfo+PIQ9EbtQIvM+4gcANOdFLbbT27VSjNDJ
	 IgggTmG8w07Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D944AC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 13:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167672856584.2021.10884994975231093161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1348fc4a89de62f8509d74a48623795731578489e915f15df4511001eb07143f
Date: Sat, 18 Feb 2023 13:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676728565
