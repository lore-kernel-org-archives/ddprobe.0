Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB06185E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA9FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668078054;
	bh=hyF1RGwtmwJA039iRDbMgEa5NSwjyfIri22/r/7ZJ1k=;
	h=To:Subject:From:Date:From;
	b=hr4IovbYlzOknQB7kmwzeIlDzNyOnnUzwEDnvcEr+EkCzLqF2adzL10pE0pf1Pm/G
	 rLJcXQYpZc9EnUibeKfvlHZvRWN/J99laEtV2DOgJNXaexdeKGU94DZcRnmGJHSNXE
	 FyrqD53xNMt+DHjjV7uCjPIVZFSejcrq/2UXD81F2FW+qHrPPPH+6lMdC3xQZ8OIGf
	 QcdCPhkouV9I4MG3P96TdGzy3qaiD4XiQR16rFlEof5SNxuRy12Z8E551jKsjBIbN+
	 F8ZgyiOcCuoVHiB7pjpzi01vdIfJfRljcnS7t0nts2Z0kFkSaLQ1vugtXI1W+1HKx9
	 Gg/+X2JZrlaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6296BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807805439.24721.12237569455967181953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f72411b9fbd680fba6f8810b894f0c7234c7649b364d05b89f45240ad3a355f
Date: Thu, 10 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668078054
