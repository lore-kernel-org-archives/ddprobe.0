Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1561FB2
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DE2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665370853;
	bh=8vHf77dd/De2+0vn9Z9kNE4eP1Ol0TPyaRAqO0A1ne4=;
	h=To:Subject:From:Date:From;
	b=awzji12pagzBycISI3tY0BTqKpQGxX88IuwyOtZQm35cIxA5ktXomhlFpWng0acme
	 8mGgM2J3mpYZeFDJ83VfFkvXSoLOlkkqV7LdGlIdxIhx8aa+R8g1Ub0UabrubqN9Jh
	 36CkXT2IUpORn7n3vlDFmPT6wJYi+30WkSFL4ESja/42BqS0fo7NMnuYGhIYrPRw35
	 +VfLbf6TDm2HAouSl/SPVflzon6Hu2ZJQXOmL6Tw7ncu3/8juxJ+DGmC7jX/Gux40l
	 HZ6DTOs5zXyv1ZN6xuRuEJEqD0licuFAKQ8w3l5uZM7PVZ3QfBgE4zxvZMfAl6cdv3
	 SvOXPAAuPFLPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F911C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537085332.7418.14155675382206794772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7b508a7facafa5fdb16ba8963dfe692d01d32c112a88069b2c5b0e6ec402a3
Date: Mon, 10 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665370853
