Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DCB17F7
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755A6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669479654;
	bh=Po35Q4J7Pvt+2j/j1YFcaIUGxLWUTKq0sK6OKRfB9d0=;
	h=To:Subject:From:Date:From;
	b=A3GxEcaiHQg/XmOSo7DXVQheymoygIgeO3aj9btM9ZHXDjBUM7O0YKDNY9279HwW3
	 LDdXo2evVXiR/4kKoFCUd10odoI4WdKUdO71vGDzUMvNcqp7jmI7k3wwwsgv6T8QAq
	 SmsTfHxcm+EW9ljiywSwZiJo8xm/YRKF30HnDy0ahjOWF/LBbVmkWjscEo7y8owjcH
	 EJlT5YscFYmx+aow/m3JFHXM07ApinAiN9AJFDxZrogh80PIf3nRnaC9UFUH3cAqsI
	 VwHTU3pYYhXZgpH1d9PSUxIIQGd2bbL+RQ7M/5vXrZNrZg3092kNJc2XOZaW6zwpl3
	 QwLjA1hqfv9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCDAC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166947965436.14424.9867439314382984474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f21f47cac7c71d0f34d0a2ad4646e12862fddb1cca520aac383f05068dac0d1
Date: Sat, 26 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669479654
