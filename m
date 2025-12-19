Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCAD22154B
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766124834; cv=none; b=V7GD+j9K0XC1ShWuy4AWjqyOeQ5Bkvu6eeyTepGiHwlzJ5//mk5Hf2vvrU/KvPK9XRDFv2igzT+pstePC9E4pZtsTKE84YwMymMvZuM4Bjom11wC+umMwZNvRu/ND+fgIZrZBr+Fv7TR3wofxLfw/+T+uGm2/LlnjeB15u4bX0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766124834; c=relaxed/simple;
	bh=XtSg0uqZL9hpdXJunNlH4HfgyB1KNjK5497jCLUF7WI=;
	h=To:Subject:From:Message-Id:Date; b=agT/VOLt/wNj6/fSRJHfKKNk0Sc0y2qrnm5z2XaXl2szjKjS+PF8qmE2wyDchPFhvhC9BXe40bCpICXACrwdhg6mTZ3V+hyy0pxHMpyGq+8Sp2H8cljT0ZkpPi6LXtjJcfLK0YKkem+gtscADMB1AM6P46Zv4oxO9R9ZvwdfK+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obrATpk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obrATpk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27EEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766124833;
	bh=XtSg0uqZL9hpdXJunNlH4HfgyB1KNjK5497jCLUF7WI=;
	h=To:Subject:From:Date:From;
	b=obrATpk/5l5+pztXNRL7tE9+0jHLB76qiVjAHIFei2w3rw0X263SMVnpy/2ik98s7
	 ZDDvoCm5vC4uSLpnyXBwsR9oSiV4cDaeU6DqW2nSOda6eA9MltCq6p+o0WAVWg3p4W
	 YxaVld+b3FPJIdE0xmFJFvalZaSkyrP7i+W0YDKKrHR4JNxzDq0aELr/YYnh8i6rR/
	 vj8aN/7MZrWEXlBB+jRUVm6lgiz8SaokNFV8oElvr+A8+06L/wMIWGfqPI541O0g8p
	 CGeI9yheJMMR/Eh9HINPYUxrL9mMYqz54nD8Pif7l/pmIJyQ4sQ3TvZgc7a7C0gakP
	 Bm3iwWEDgZYEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCBD74956
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612483358.11767.12304176372171215845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00757b1407d3ff4894eed23cbcf2a66f02139433b7d652c3d51c0fbdc6e8363
Date: Fri, 19 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766124833
