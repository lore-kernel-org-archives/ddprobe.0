Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35182156DB
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 19:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BF4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694459648;
	bh=yZ2V2FQhrY+TsjeEQ/8EI1RqpcT7wd8FBVRqizdB9vg=;
	h=To:Subject:From:Date:From;
	b=cgAJVj3bDNAmVHwhBz2H8G70QJphDK1VJDgU4Hvd17bD1HnxZtwxHI8rbN3I+BrN6
	 jFgDyZ4RK8ivpE60liW4Zyz5s/5vO2qyfhaxv7Foan3XwMhOg91OtBL+bTv7QvUzqr
	 4x9WcRkYns5LC4UOedvc1C+/W3nL7n4ceMlnyjJ1qNB4smOyzwzZE1MnN14C1J/LxX
	 AXMYK37BgzM40SNkHrWO8Nj0lfrTf+GaDKeikwZlMqLeWqWpnyMsZq9x6WfCMOkODK
	 ZE+nUr+yinuM114lD2wPMrcRddmtfWRoJfZoy+R6dzrQpjXR2xHCu+5ChywMNeqVnW
	 g85r+C6YNogzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F15EE57DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 19:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169445964866.2980.13551433325582451099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25786a68ffe2ae1966fa2036e9884d7c53731a2225bff2679eac16a586b97b37
Date: Mon, 11 Sep 2023 19:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694459648
