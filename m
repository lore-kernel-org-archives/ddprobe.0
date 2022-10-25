Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8146FC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 726BFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666727453;
	bh=WtRxo1J9Fu7xDh7r1xqRlV/GrIKz7ZI2EIX8CAeeqV4=;
	h=To:Subject:From:Date:From;
	b=FjCVf2KHnnEPYxtUM9+neOYBD1tEFROdhtooz11/REtd9v5NF+GGTEtGHo+kI5ita
	 JqT5LaeGGvvrQnhq1tLxUg8enMzO/OVq0PdjKtX8x8Nsw/H9X1COtHDMs0q9oDX1Gn
	 G/FyGxes3ThZzTOxu868gPjcQGUxP/vu/oBwFuHcdVaAjPPwuLI5cwvXy4ndvDUaZx
	 vdSUBv1dVGQZ+hArpQNl0WnXc06YqOvljnF4i/F2cLm3gfm9u8HgxaCqdz5bKhVURz
	 K5xJvzt5DCIpozMR3B4tuNXbROuiAV0GCr4q8pxucYaf9w1pw/KGda2EpGN36jc048
	 3yIbBfRfuGgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CF8FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672745332.7177.743110042271263222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cc71b2a0ea4969252e9bbfd1fb5d6464a97eeed9aa33eced93549b4e90e195
Date: Tue, 25 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666727453
