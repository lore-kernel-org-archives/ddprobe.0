Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C515065F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 684DCC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665046253;
	bh=w5Ifj1I1wJ+2OqIYWpiFbEnN1Gm1ogx6Jm7j6dI/St4=;
	h=To:Subject:From:Date:From;
	b=blzPLkLQwVUFWLU1cnBPXBejpBWgMTfBoNMZjmE0ZC/7saqZuVmOunRMy31+Z+Qco
	 vfPALYC4gfRKuMLAhLZ0sGQuq8t9n3SG0i8LhL7p7a3KJdQNe7yWxMyl5infMJweZR
	 1ocK3OrCBQkn32n9cywyzRwinLJIbcvwKFJKX5QI7qo+NjiicMPQIPbT1UeeWj0iKu
	 Ni+gAAWXKy3OXO21Dm4I6vR6iPkwgwwtL5L6+PpgNfDFl8QdW/aidTfq5jUyekJRJb
	 9RQmugtbyVlIEav4wfyZfh32ktiY2kyvRQKqEX1SHFCSQqGo8gZuac+gRJEvLYlbd9
	 e3uy30B9HQ9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E17DC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504625331.29225.12900372013530597641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edc49bab938fed4ac6cb4223fc42cd4960b387e145591a822c2f7f8c17250e2
Date: Thu, 06 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665046253
