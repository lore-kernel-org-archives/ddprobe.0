Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DB1EA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E040BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687716188;
	bh=y9RzbWGfLWxX/DYx47YrhYvVRUEz+ItqaoYDr1IU0BM=;
	h=To:Subject:From:Date:From;
	b=CaA0eG1UKvsO791QCm/gSgl8mHBopwN1hclwLh1HtZrNxYyEzl/W/a46H8fPCfqmj
	 ezl6sF/imULL92rtyxXRqJk5LoIWtZN6BmkiN2Lh1g69wr7IabVBpRc6N99IA3Pb8x
	 ERmmbheqvVYZrE5ueElMIGX1Jev5QDBgx38woosOXThwU7skokGUZ9b5Ni1CZKwnNa
	 yzh9fB0mQLBlyNNvkk+CNa7pDUMIcPT1aHQUn4femYSM7k3e5lsuZnbAwg3cmOxDB+
	 jtLYHxxa7zG8C4btW0N9TwkQehgWQnXhcXeYH8koSmJGO6rXoOucUk79mOMp52ysbV
	 J77YNxCoJfxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA95CEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 18:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168771618873.31545.9762581139010432961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef04ae2cbe8a5fe4ebcc3c54de3f056ad5a0daee662b8f97db5c29f25bbaf62
Date: Sun, 25 Jun 2023 18:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687716188
