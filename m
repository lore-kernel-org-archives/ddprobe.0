Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F517E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8EFC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662102653;
	bh=zNTcy2cDQUZPGch3krzVWUCDmZOHO1jxT76lkG7hADE=;
	h=To:Subject:From:Date:From;
	b=CX+AN/j22jyCAxXHyBEkxwGBXJ8mtUEgDc147+HRdA1g10cx6Z2tGYVk0hSR9j6lX
	 +Fb0/2gIFTmSotMIIvnPYTOxp3U3fIQ4YllyyEU/Rc6eSmJOfgYcC1gsprakmjPOoo
	 Vu+TFqJYxY4bajiJEa3jBBE7RdEk/yBdayGbMjQtwr+tptwFGnPOQMpiBoqGf2rTqL
	 p13n92QqkRKAPqMd5zdigWhtFkbzUFtHvR4GRpMTwXX4WHI5LYoyqXlKItLIJ70Drf
	 dsy1A/qf/luwrpwXsQfsAPqz9BHkNG/X0PPh4H+BpcH5QsagVJ8N/sM3w0hqx3qXd8
	 YD23zThT++2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AC5ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166210265333.11029.4976096578569739777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51038b5c0f740fa9c9b9e6261ed8bdd528665a487f41384396ac79e5d58cf5ff
Date: Fri, 02 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662102653
