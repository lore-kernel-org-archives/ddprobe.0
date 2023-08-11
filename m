Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5F38833
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 21:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90BAC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691790788;
	bh=XnGBJYEQOIvrRstoe3rBP1UVNf/T2TFSsTa17QgD4eQ=;
	h=To:Subject:From:Date:From;
	b=cbxSNQKc3jgAXp9hyao4hptnJVhkI0A1UZmwyF+YqEhqMAn/T31jWk3v8plEzpehP
	 OBuJQaQlSV0dE5TstexQHRzn6ZsSjcp0GHN5uSBDf84yucDSlvpqkP7g1/L8p7kM5Y
	 rBm+42HH5/z5LxJliyO+tJFb40vIiuwuP3aR/9XMvztXZA+LkagZYYgEFnV0MQJ5Em
	 t6ks0tvOekT5p5FJrYGL1Iwr/rO9MxObraJGnV6F2cghEZ8HZm20t54U7kiNEQWH9/
	 TQ9d93twsE+d66d2IYNGJNXBCsb99NRfhOfDQQ9h8hx0jXNlPzjZTO29E7vRqNBFZs
	 ihpgi/1wkrNDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46B1C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179078872.12872.4007989557582963861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507b60e8507c0c2641acfc6d3e027bd551e5e3b85aaa19a08129a8dcdefa4e96
Date: Fri, 11 Aug 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691790788
