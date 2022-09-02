Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0BA110D
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7687DC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662109853;
	bh=8k4eIQAMl6Gn6IocclV9VKoXJQ9hrU1GDaK+Gj4bjys=;
	h=To:Subject:From:Date:From;
	b=Yy7yUERKtNsBJocBPcaF9+pYna8xt5b6LuiLShyjlxon0eWr4P267ekjim0LvgtpC
	 /4LolZt5X+ZHWXJct1qG/AZbV46qMSukQ4CmXa2XYj9puYUD5WW6ib1wW4KMrTxrev
	 KeveoRlBGLVh6eTogapSDAPjldl+B3q3dMwHfi8WZcpVbEpV7fq4wVMKxlUgw6Fw7k
	 jAstFeq0wPKdz7gh35zy9vWyAb8dzkWgmqvFzD+lKbk3h/gnxqBUBnzEGsASB1UP8A
	 LGdHVL+UuY/rCZyjynhnsUr6fznrMRkj8eSgHImwiDCLGWhpjPZtg6YgVaKLdNSf35
	 a/K6ljA2riBBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE3DC6FA83
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166210985336.30510.8247517602670708261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b94808a01956c6c93cb5517e8cb75b18c16effca441123b211306897e994b99
Date: Fri, 02 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662109853
