Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8EA23214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C7AC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670623887;
	bh=fBum3T4+u8yR+ksaVWLD5b8Ot+vmzckKWcpk/fOXXGI=;
	h=To:Subject:From:Date:From;
	b=WbiKTP3vsEzp0zzqgcNR2Z+w7HHmF6L6IoAHybtoFormRugauuSX2TZ5UEeMU7UBT
	 lXRKKgkywZHq/8o9vnUlWwCM2ab0LBOeQZy0YXk+q9WsriErgoWOxnHnqcvL16dsut
	 YifL4fhe6BNHY5RPifd0ryP0X53E3FNBgYe5cwuBzObpsp+YS6wrIZzSIqyYjS59ne
	 uzrvKzE6jBGdSwoHIwLKRIDb0oLXtoju+uSLe7XxWOmRztVqyk9QBVdyzz59bLwe19
	 LlhRgfDV0vccKnmcaVRA0TgHeXovFjc6wBpBXCOf2KpPzsNYLasnx0KJPqM8ghCnTJ
	 sNDu7zAxW9BJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E914C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062388737.31307.17932600306073037724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dee0021addeb0c13836375eb8f9f9efac05a65903d577ce3c8056617d0f558
Date: Fri, 09 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670623887
