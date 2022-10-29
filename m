Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A2F23C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838B4C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667038854;
	bh=5T42OMALF9XXen+w+tkZqD+fyNtHSYVKK/dkZA+7wbg=;
	h=To:Subject:From:Date:From;
	b=Sm3i4rKLF6qq2H76yUBbTsoNHOyKzJqWAtKlIswh8mAIGliXpbufPUzg1b+87Uq/b
	 PzA9ujwwKPmtfaQU5U5pJ+PoJY7NWI4OLn/VoPV7BOGfSBd1bilepogT2fdQVb1Xok
	 5emqdIL8qx5SMIucfBwUty0OU0p5x5JWRdW7ES+n2s009axm8HF/05KhK9bTLYCsTz
	 /GWTnzuxu8y9V8rtLmuX5wbgAOMDlhpIcMASU3K+EjFGxxUlq0dgmwgQa7esfwm0sH
	 Cf90YXEI1mlV+EuZ1ljIqnkOVeYPg/dRFtPSkzZue6hL0WbJVhsIfXc6KPHttmcjkh
	 bnW7rlDGzP7AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62939C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703885436.4553.13749511593490620162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b94c98980dd925405278c41b6498196c76b014caa3437ec2926e8a341d649fd
Date: Sat, 29 Oct 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667038854
