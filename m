Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EA9C2EE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC22C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687259528;
	bh=sllP5g8xQgTxbzHKZaul6ESLFXJj9MKB1g+/B+LDVqQ=;
	h=To:Subject:From:Date:From;
	b=BHzBBk1tsRJLmOC6pABlJRQesQ/8wqdvQtT6SJFibVg+4HZJY1MOxYNpo1MS1A8hu
	 sMfWuA+fwi5Z+i9Co4E4SHiw5tK2he5R0G+R/uN7plGHN4ntXrR74kFhNKPxcWU6E+
	 mhK8sIuFTvzU9SGrEUbzchjstSUaZOhxwn097LRbs/T8Ll/jg/YfM6y20m6IoFYO90
	 rpaf4uBYVQfFGyNn7+9sYDGzDHYWNQ3QmQBhWyq9pR1tNzvimxfvCF4JElu8rQ06Zp
	 GL2PfEsDfHOhUbAu+TFVJZyxL99Mvid48CabBKVchUZTv+YUESVxU77/LHhW7NBYWo
	 1mfG7mZtL4uZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54D0EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 11:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725952872.15322.12264710716685562297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d19f1934101044749e47832aec16633289e8924dce19ae26171e34de4d12d01
Date: Tue, 20 Jun 2023 11:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687259528
