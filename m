Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E60621
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED462C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689814929;
	bh=A47IFo4akYQoIS4rkCm1ZdbSO7NO/9Yi24OBbH5jlPc=;
	h=To:Subject:From:Date:From;
	b=F62W+N1l1sEAQXLWT+R27hu3yMBBTdwQ+SE21F5Ta2uI8AYlGoNnAioFJw7FOz5W1
	 46gScmmbG1SKxbAz8nVeGldAxAjeq3mqaA1npDo9ldKIkGQ8/ffOUoPg99uBUJFF1Q
	 1HS9mc4Z7JtdGAAaYTUsRlIs6s1hEiSOYoEX3h6xJeUQDw5M9B6zd5CyW0JxBCHjrY
	 kno6APEiWcLTW/7N6DJSwZ5NCWgQZ0Bh1Bf+C75C1rDqrrvWiMzAnxZSuXthKPSha7
	 fwz1UjvQDo0Uh7fvk7T/Qkemb5bSWgbFe8A/+EMvE17ByJxGsQSycp/6TshyWUwcby
	 dS/iAi+0ydgZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3AE8C0015E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981492885.22464.5232845835985681308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3929025e596af7c62627a3837d5a2e006cb8b13edadff74bc6932a420ae16c52
Date: Thu, 20 Jul 2023 01:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689814928
