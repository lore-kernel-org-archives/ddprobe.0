Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF177646
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A974C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673508087;
	bh=/35O91A1HOrBbuf/fXaRyWNCFGvax2TRKAjMipLClAc=;
	h=To:Subject:From:Date:From;
	b=mH+F30oawsaW1/hK4rZUDayARlaoVLplqpwDnAgLJyrng+C0btqs9Z7y+fPYukraK
	 kO63/fVS6i8ELbHgQnLab38e7UhtqTMk7jluq1GjLuql2AEqTV6QeEGCAx0JqZLiay
	 JcO8sTi860d10QrKRJ7ZIjblQXBqwbQ7rlXeqwBuXblw8Uv8agHk7tuYtN1m4jWdAj
	 1QVxdWfBQFUz6SvouSrzPqHO3W5CSobuJZTFKILprwAQcH2ovK2kjSnxMhHFiXT2dd
	 cvNgWCMT/0nSHpYcyxzYRqKK9KUBcT7Vy5HCqFFqi+ObqaQv1pM91cO8JCUKJFbTHA
	 9BWm+pwtMjtKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1EEC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167350808743.19109.6231000030600600021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14c3f249b8bd0960bb84ac7267c2e7f0762efa6169ae561383499070f8ad61f
Date: Thu, 12 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673508087
