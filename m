Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2F028EA
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93B09C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672685487;
	bh=7sZZo9K+o1Xgq6a48wFhRpVAdlvdOKlgc1YChhISBFA=;
	h=To:Subject:From:Date:From;
	b=lYaJrFjVUzAXlItRnvcTDzvMTZFnpip7m9ESXC4gQk0SXML6ldlM4RqE9bEWlhnee
	 FB79odbA/a0IqpV8Jw2mF2KDxgIJL2F3X6TngPD0W9foM6J/+RX9Dscu/s35UyBYyp
	 87+1GnzUz+7MwcyT49SHH9o3gxJ7ye3QGQpETFg3hm5SqXr5ZtwkmtDZpsPDCXizI+
	 tsAnLiy/aDXcVZu9kKf0c+sUxnlKMfROoqEMDPBagRpOwfUfcGzEK8CRhlOlPX2tUd
	 Kk8ZG5X6JGp+10f0NZVH59zV6o0xZIQ1oayh4nRH+BRqAvl9LVHFUHTGZuUqIcVggd
	 peCoD2xS+oudQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75E4CC46467
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268548747.27820.3791146192871633064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef9610e81d901b31bd2224bc10a11b762e1ccc3dfc90352fa6ff6e9f2b07fb8
Date: Mon, 02 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672685487
