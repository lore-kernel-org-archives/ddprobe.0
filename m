Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D96F7C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD61C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687675988;
	bh=IXKvNC7X7XhNNUSJQ9+wVGkLa8jIYlolP2zjVe5SaR4=;
	h=To:Subject:From:Date:From;
	b=QfLlEv35Z5FKbTLymHTsTdNDOkerNEMnEt5hEK23ONVJmnx6vUljjw0fN4exmdnLB
	 xyni5ZWNTwnNE0ZL0UAx3sZTsL2XlJWLBjD7TAUP52dBRHfBBxrT9Y5YLAU+p04+ER
	 5Sae/2DL7zYsFSfXm8eGrQxuCbbK9diwFf/IaI0YvlCF++YlKAzlVJfkldDt6MDeS/
	 C6ci65s72sZ5bgctO9dH9J/Br9/A6UiUlKbYnW+R/388fLpjJo+z6o+HqTYuDDBzEj
	 RUnPOY//OSVxcJdepw48aEDcL3f9X3mMcYC22UrPh0ITj87rvAPEzJdesqigWkSzYV
	 CSn0a5cmOC4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9BAEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767598876.6337.6253796215235673781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6e524dc80c5844facfe7075d628d3b132936fe2176b5399c7a3c84bc03e9e5
Date: Sun, 25 Jun 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687675988
