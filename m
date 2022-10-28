Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8F21851
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E68C43470
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666921254;
	bh=41X4oJKZXIP0qVSK2v90wFkBbWhMXUR0BpiuGq8nCmA=;
	h=To:Subject:From:Date:From;
	b=ScW6RszeGnTytr/o1JJSVBWNMz5K4tHz6yJ4+xbg2ZGwigaMRA1LStYvYhXA+4KHR
	 iU3ypEeuYOrHu4yRAkcoST+1qIdGBtIPWvfh1S8YRlWAsOoDLhzOOYdvwU5oJRrO6w
	 t+VAURuWk5XBF9uGRu/4Kwqu5kIShd634XYnqMwguxxXCB9bLI8w1Q1vrdLph7CCH8
	 kaTIe5e5xXDhJ+U+ykJxZ3TBOsZT3mQUpkL5b7rIYw0rQWXbqrdLKXrYu/J4n0VrKM
	 C96j62b1wFJGsGlgQZ+d8kMIFGibhBbxae6xeRDh23fZOh7WUjZfncRR4JzWUV7Wu6
	 kvFuQpfvakJ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5614CFA373D
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692125434.30033.1096279015544416009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26fc47b32f14979c3d9bc92d6e96b0e055acc5cfec4594e42b0c4b904b9c49ce
Date: Fri, 28 Oct 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666921254
