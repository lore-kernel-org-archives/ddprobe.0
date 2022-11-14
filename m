Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CB8EA2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75910C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668465654;
	bh=r5CvQMgP19LQZsqDAM8MiyuFfmFaoWsRocCfwRFHfcg=;
	h=To:Subject:From:Date:From;
	b=PLhG3a+hxzxe1PNGD94rb4+YKdPGmJBTZ3erh9TcbO7hG/lPOAxSAROBo3ID/YvBY
	 ruzBSoUYEjoEGm8d5iRjlFYcnaxuoFzP39k98X9T2yBOWCTIDtW8YriULShxIzWtiC
	 Y9swc7PcA5+mcOuEzYKBcy+YEiTuh2YG9SezS8TkU8huYqh02fLQF49ds+wckE8/sX
	 o6onP4ZWj2dOzrOGdx1dVS1lCHwWqzVuTzMImyvt1rJ8cBCYFvYS8t87tMnoG8EWtB
	 jpmcCHSwQBHOVZ9SLVGVmg8sklWpPBgbb508/YUVLgB5BiKfjFumI30xMx+0UWRBwQ
	 95aW6LEA94nKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ACB7C43219
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846565435.27444.17217664921272073490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df02f993f628242964868e5e0580c75c805fc6f6e1d42b48cc5dec79ffd6fb75
Date: Mon, 14 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668465654
