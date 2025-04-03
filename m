Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2322E242914
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743671994; cv=none; b=tAp912Uvmjxh5bRu6/gF/QXDkCinGcQki29iZ3r3KRxwWBXhcno6JGGIUoKT/UJOvs8jFJKdGsTzKn26w/Gd2pnOi/cIJ0a6qHugHSPJyzE4BUmy5w4S1omJ6ZeGzomBEbJdWMvpSH9LDxj1Eae3/bAWHa3Gq+nz+h7BlJyPkYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743671994; c=relaxed/simple;
	bh=6UGyRP4MBGkiTqF9e3zvIubRpwqpuHHlt4C5nypaL9E=;
	h=To:Subject:From:Message-Id:Date; b=AORxq+dojgttcDpJqZ3giSULHBULdK5rnZPBcu/GdE8gVHnCQdez8R6eSb0u4fVAq2NK01oJTJrh4wAmbmrP4GfEYHzaMuzDFAnIpLnUoCvG1xBntH0FtLxqYR3LczjHE5uWwDZn57uj+TD6Tjij54NcjeVzXO8f0WduEZp3ME4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuKd+tko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuKd+tko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17A0C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743671993;
	bh=6UGyRP4MBGkiTqF9e3zvIubRpwqpuHHlt4C5nypaL9E=;
	h=To:Subject:From:Date:From;
	b=RuKd+tkoRcJN4xwAkwnOQxM7gs8xvaIBZ10P4wx3QTnWu1B+mr+9tIp+XqRemAgKy
	 1NvmFdalZN0QUo1CeBEsEB1XvJj1pSzZD74u3K83Hf0X7dafM2yT105iYR55GZXvKY
	 byBWlX+iUEqVRY+9aH4RbkCZ571qEsiNBmNBcyeBVXLP1qjjH75FPNwjY1RB+eyRNK
	 Iqu2EK+PyRqaycdwpYMxTjHlNON+FTAHpJ3RbwAw5fzQHUXN20hHBUQwYmQ2zblB0d
	 tA7tihjTyc2hkWyge9BX6GxQywhSVtl9sgh9Tq/FEcYEwCsPcdzvGpcG4UINoab1sT
	 Ye5XiDm8ZoNaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919CFC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367199358.5384.2354598847833817525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2040b363f1ec05210452b73418eb61532650d331b01b366bd0f499ad10c3b0
Date: Thu, 03 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743671993
