Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C7C65B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0824BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674374526;
	bh=Mi62S9El/2MFFtu9Ic+PC0ew6Ue5sgEZUmyb1RRoSWc=;
	h=To:Subject:From:Date:From;
	b=niqiKpO2F1fn7UgaHBAGrt/TKjr1y7T0wUC5s51UwB6my46PexROl3TO0sUGjHvVV
	 viKmxS3frBYjsqU0VqekZ9T95bSfG7Y3ad5jS1fK5s5YnSnA6tlPAQemaO6iclu1d9
	 IESsSa9C61f9OBEut3ZM0aTqEzmhA155nBo4N8jcCciUzf0It56ykgw3r8lDQP3rib
	 y/n6DuNzxOHH2uZcRxDA50hIH0tmLG/iEvQXF1QqQ/fjJuiTJba75Ug3SgwAX/wusT
	 5lRlFrBULpiqpS5AENruBEhRhPkftLdQH9xAEsehKAVqkZYpH7hN2j1puhEs40gbcD
	 BhQSQnwVebLqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC007C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 08:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167437452588.9133.12534430931432969196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bda7d6fd2314be293581fd7e1c72e9b7b348f13daaa6df7f4fe6029ae5bc818
Date: Sun, 22 Jan 2023 08:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674374525
