Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAA91869
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697BDC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662130253;
	bh=Dej34wseJXa7qeB6gyV/GmXhOKePuOxlfO28e1c85+4=;
	h=To:Subject:From:Date:From;
	b=JqbBYVFJGafZ0HViofyYcLDJ64EBzeJlUmGZ1tbeV8hXilVa5iqkE5NfP9kCSJBmp
	 ozKeA97b16zvJRmmAL9SKCHcODrxOPU2aMXNNd2E73RnmbYQo3ZKUbGhawftI981u8
	 gL5tEh4nZWkuWMZyeejB3gRWGSKAYFmuCxhdZftAazhwuM9wpzHRPC5tE/7xAAZcH+
	 MUOgf0qqIum8cKz1Y/3xt0BUV4+poJLq/DryrIc5CciatbExKsEDWQ8gnbPmJM28jH
	 RMwsuTqb8fKiwzfCW8FwIIYkuitUbWFeQQlZ0N13iSiu7fPimXLtozTNl4Uz4HjmIi
	 kKv4iX6OCXJ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F16BECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213025331.2546.18303360419483351060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef605ccb2bb5b5c1c97bf48e3610abb058bab2e1fc52a87f6e46dd9b6347f3e
Date: Fri, 02 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662130253
