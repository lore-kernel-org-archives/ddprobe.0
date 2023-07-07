Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE20161
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7617C433C9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688689028;
	bh=NUqFSfeqmQm1GJXDe39Il8iIDIua1vY8tgO5LelZnq0=;
	h=To:Subject:From:Date:From;
	b=S8WxWnN2iF4Fu5QqfE6ZXBtg0sWB5dJJl9tg/COO7Sy9kcnCH3HJ5f3nNKzW9bazT
	 R14F8CCSgpNryTdq4ih2mJugzmE6UXeVa+/ytM6yspS9lSSV7wuFE9M7zeO4PJd03p
	 LaHTig9cYbSMtTetc9qb9QHtxzHZnZ9pyZ7tXX6DZhHldhySpYbOBIpuIjY3zqNTZh
	 sG/2Ev7OTdbsX94Wz4QQwhlahMO7ZJ6/QmmP0N/EsvF9yz92WxMjizf+sJeyB99YO/
	 spCsf7NrdBROJ+m+0UD5w7VlhE6sNQXdlIsi87RGhavJL8rFc3Swyg83k4ZyuAX6ZI
	 5tE1TncQYU2+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9755EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868902874.29820.12308833104999052489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257fedeed0c6dc57aef781de224926db5aaabc81e525d370c61bbb71600d5a62
Date: Fri, 07 Jul 2023 00:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688689028
