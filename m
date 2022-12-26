Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AE120F3
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F44BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672068687;
	bh=WZ8lTrsTvXvZo/CRuIqUnTjIcah8eyK0lwqy7mG9T74=;
	h=To:Subject:From:Date:From;
	b=JSBvsMXPYxuvnCHmZRSh7kIu28xBGku4lzPXG0lzXvd2h3jyzpMx/Y6dvczGFoCeJ
	 K0JmU4fXyMgr4kJdCVl3V6fKKD9v0HU76zBsRZmRd29hEm5KUSK6ofgIYVxhR2k49I
	 YbpJntaDpcPR7tFxNu5wEDV5GcVc1HLZWnHak8DHg7jPuzzrBe+i24jiRuq/D+PitS
	 /sWgOHlQ/veUGIZqirXh4JeXCkxzrGtkVWRlAE6OlRnO60Li3WxL1RsSncQ3Hi/fG2
	 V+kMPxpUOYqsqkxmKAOAtFUFWuuPzMnjFRK9pvq7sXEJ/9eHvHgpQqdLJFY5lrtI5Q
	 21xVQ25rjUntw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7269EC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206868744.21114.8056311880988860697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f0a59673b2bc9a42dca0ad9ab664bce62a741c9f3be06f44d2e7c3f8472960
Date: Mon, 26 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672068687
