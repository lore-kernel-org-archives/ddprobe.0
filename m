Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6AAA938
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 15:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB868C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688657828;
	bh=43qs4ibZ7oyiftYEoaHzVPwXv0bGeQLfo0grCNCTNTQ=;
	h=To:Subject:From:Date:From;
	b=Am87x92M18TeHRnZDTvwnvUPQLUvkeQucQe6kgpE0s0aHVot7m/O4rEtQQUDBYfh/
	 Bm5aZYMuy3a9laUJcjyE6yUm5IH45TKS1olcruLi3qyTRL5EebYC360UW0KmNFyNVu
	 z0Ot4is2/EGk9G4NC+pkgHuLgWJ3KYMPFa2kUieumNNxrT2ybiJCU9cHb7tJHzGObs
	 koAlF4hDemXm4BkLy5O1JG6v8lrJJQaOSxlg9ZwSJBCepQMBiowE01fN3VDGc1GOuC
	 VQ3sfhdOJHBoBP4r2WSEMhueBw421F5SlpYYDKz7bpSJVt/TCndFLcHz1X+qWHGea6
	 YhqzXYTc0xO1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD91EEB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168865782869.23001.7094471087228983280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046c1df93ff413187eb855573f7a34bbfbe8cdc10a48e66c3a15c15cb4e5e80d
Date: Thu, 06 Jul 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688657828
