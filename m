Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7056D12B81
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 23:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE493C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 23:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696115768;
	bh=7efPEkuuYC3/jnRBEIFdZgL9f/axuxWM4BUJSOGdeKY=;
	h=To:Subject:From:Date:From;
	b=ohbRpwi3uecs34gvXHqAgU0CA2PXUTyd0d3HZUhSqYpuQwNimvoKW9motcR4986nR
	 c67k/oQvIx+N1jofy8e8dGF7eK2JV3zs0Ryv0MN2XNJTkS8zIk+++IrJyyR4JDjmx5
	 k7rHIdoba+M6SKjbdvJN2599Mo/gZ3VQwbF/lREIvMlW2sAyhTKIF6c/oi7BPQDe0V
	 roTZ4AEzjEKb6c6Kd10lvBn/q5gsc6BmCnr8+DIJfdXcrs4gYVQFBNLG3M7F/zIdqp
	 KRSIZccGDnVejLeW9SuuTfmI26XeJm74WmSw4Ote+kstrpmpp5ZEjrfc8mGYzKsssh
	 H/lLwuAF9E98Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF133E748F0
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 23:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169611576870.3851.5559981829717016652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90269590b0bf1212b31520a1bcecc994476460196af3884df9ba071925367445
Date: Sat, 30 Sep 2023 23:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696115768
