Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244A812E57
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feCWvolf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B053C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701156496;
	bh=mgsTXyXknQggAyDyWa66RQLdrKbNEUhT+HPnClIsBeg=;
	h=To:Subject:From:Date:From;
	b=feCWvolfFp9d8aunNWLcW2c854FWcAXCrU+0B4hyEtR8fEYx5EcsCBYJ0wolgmeyp
	 cMBKRcMG+Ms/WcyIdzFFAx5haTNOrSJLjJrkME+5YfaPowOVO6tRTF4ZIUXZ7NvGxc
	 wRHgsjmI+EFfYjsoXQVGUyfGJf9gZeNG3aSM+pQggDG4zVZt2ahivGPjgYEgc1vGLS
	 6SnP7acaZ3uuBgtnNu3bjAwd3zodS2JQ/BkwxTdBJwKuJfDdVX6S6iA9RojRVWAiW3
	 N7mt0dOzmDlYGsN6WoLN3AKkycsfZ8bRPNfaCemPojS3qDpdHycNwFY0YhpvudxI6G
	 p3F++hb2h2VEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A226C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170115649642.12615.9736770681712262435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b520460ae666b71f2f05d469b1c61daa2380ae56ce5447e03b53895cb14e77b4
Date: Tue, 28 Nov 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701156496
