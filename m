Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C757E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B8AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671449487;
	bh=YXmy7csxC5ytOCoMjC5C41F7UAvaCNi3Mf1qVhLzZFk=;
	h=To:Subject:From:Date:From;
	b=c50+4BjkNib0clvKp1IxGGoSsRLypN/FM08Ju/DFQgJu6VxXXPhPDRX8cl+b8rJ98
	 BVt8WVNIDBPlhWloOjAFVDKtCmJHOe6masEQ9Jl5N9ajjicQziop8urlw5TOtFkwKw
	 zkIJxI2jo1cypQ59TRWn+ovtUwSJqdcxFIgtlBBr8p8dn0VP9kUeI23kH1iKgX3JEo
	 3OST8HBseU50TV5E7QlPDCA+1074iU+qU+cUmFrc4PrKMrh7+Ya4wG6AFv5DMbdJ35
	 lI8g2TLcY2xZ3U7GtdNUS7z/4EXqxZz5lLsVKqDqRldMDVrAYe1wOZ5QnCCRvKMLTj
	 PDgJ18k6b4+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F06CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144948738.13469.319559680440229920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9704b8d1c82fdb3fa2ff6fe50a0d45e0edf2da868580aa693dfa070c65ae42
Date: Mon, 19 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671449487
