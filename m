Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC45B1C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEE5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666899654;
	bh=fUJgWosgAeP8GW4I713li7PQElyqf3iWG1EZtYK4QJM=;
	h=To:Subject:From:Date:From;
	b=R8m3zi95iQGAbMjq3+PftS8IGO9cfLf/6wC469i2ummZkdIKaFKcwhoXNKPiLYpD/
	 cmvApv5iQjnJukKnUfwfANT5LxZO/J/UmAgQ6WRJoE+56CFy1WSAcndNXAnrkMljiH
	 619ImCGNY59dbPAA1WaSL5Ca3xwR4JgVmk8sKHkfAeiJjIl7AfCe1b//UdeCkRCyZC
	 7QmJDDOzjlXCAIjzd/Z0ZmZqTBE9Sc7dtEWau22jQvoNgQSLM4R4w2s0TKvQMv6Z5s
	 7Q477cNgqrAMKV62/FB0jXrd0PBELdNjWYlK2RklZeSFXk/WWK8BZUNo//R7A9nHOJ
	 B+JvlfGbWtCaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F20FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689965433.5801.14258457223922993009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43da2b29e4cfbe2f8d0b8b1d09fa363791e395c4ba70df854337e73377fb93a5
Date: Thu, 27 Oct 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666899654
