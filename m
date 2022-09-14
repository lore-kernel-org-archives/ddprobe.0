Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E5B3FC2
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD7FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663170653;
	bh=ch6qjIL0qHmf5n26Kp7thN83Hq1kUS77oht0Co+9uhE=;
	h=To:Subject:From:Date:From;
	b=djCWXlOpWUZdcQXw5wLFLKLuTvwu+vCxHcwh7rT/uU2a1gAIHG0xA3XOzM0vFyrwD
	 NA2j8U1iXA7bA6yu7tZCtQGBah+I3Y5HDsAkOQFO2KqB1DewIOY84tSOg7QIgapXWj
	 JyzyYVPJ2qElrFkhJ00GJ2pAuwArZIrCjZuUvv0SqJreNJFDlLBU/9Mm1QB5xIhXcd
	 CPzyUhR4wYt2LzSzdz/GyVaHFREM7Z80vmvCzhQVD+1+k3vlvJb0re9EeEJePyMiZH
	 Xt5IoiLCrxdr+7MGjDfNpim658qeitA/3+0mhQFzoX6OPp9WJ2bQoq2nDbgxr8pRKh
	 HrHq4Z0lAObOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52780ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166317065332.27436.16452674042437073853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8319a742bd503e1c463dd3d2778863520cb51725b79d44c52274cc47ff4ef476
Date: Wed, 14 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663170653
