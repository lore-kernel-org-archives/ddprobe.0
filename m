Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D287A50
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 02:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 02:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695869168;
	bh=cCs+GL1Ac//gD76TwAZ52bxkLk7fGA604iqq9hRAya8=;
	h=To:Subject:From:Date:From;
	b=UXo+o+KzSjgYLt5FKxVFv9VnTwdAFpqAlrgM1ZCRFnIIeSxk6cs2eopemQDWqAkZO
	 4lNmziFPk5fWx5LKTs98kvIEcNWBg/CrRzGJdGJ0Wf7SQBi5Sd/jZiOWXZV15x/pg1
	 3hO1jQNw+sEIsHoG66FKsLAetQPu/PL0znfJnoaeoQQ/QpJUWh0T+OlsDYZmqFRe+e
	 n0C32mndpBV7j35ZZJQN+1HG7OcIKk263w2Dr7hMunrwNlg8iUud/BRcOPx4nbbwt3
	 cItlkxC0m7ESgXyGBF/H3KDdcS64FlG/wHpBgDw5YOGnabVuG47/cf/t1POuG85t+a
	 QBWZFPwqHO4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC6ECE7AE1
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 02:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169586916869.17409.1128774579672969014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a2ccd70ce7bf78e7e390802b3ed82c4fab54b426361260b18878968b4c9457
Date: Thu, 28 Sep 2023 02:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695869168
