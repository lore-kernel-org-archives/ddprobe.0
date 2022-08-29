Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5EA2104
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF31C433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661754052;
	bh=nhLQSKz5hvoWGE+nkZHa7p20cQdgsOTQKA7JGH+gtJU=;
	h=To:Subject:From:Date:From;
	b=dMOtkLqAqqB7efG3bE/0pYBmMtTiw4CzbDdHzMSFdYSX5Wwe7BF24lUXCMFKTrpmC
	 v8GzEpWoepMu/5CXZWPQLMmCZzPp9WH3BnMHGqA9pIVFGnwvER9KdCEkw0cqbEvHr0
	 v5Fp8z9FyOqCZdc0UI0OZi0OAdR+0mvK2yY8H5+y26oRzW4VJ49Ayels26Hg1c0G/e
	 q9jsOYjifBcJGx2YnKhuajrXKckgrgtQmanUAv+wuO3RUYqAajRHC4pJ2yh2CKjK6b
	 +Ykywng/zyDih98XqzQUzhKHLqORBW2aXtkUS+3jb4oWN8ETcRBtDLn0GSu0510h6J
	 n7sindJngm8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CA0C0502E
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175405232.23321.1788512530234642815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71c1a2cdc7ee43da04c08bfdb6afa9fcfd1e9393b368a9ce95532fba4bee098
Date: Mon, 29 Aug 2022 06:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661754052
