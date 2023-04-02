Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A97524D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 16:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9D2C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 16:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680452706;
	bh=C0d68bmOpTMU9vkbXG50PeQnAzzr5m4vaMHy9C6lG6w=;
	h=To:Subject:From:Date:From;
	b=PGZ7EXuibzKiMHh7dpk4LVMXmPmgI4LxjLFjW1vW2NR0YOe8Dl+JyM5C38eg3NbZ6
	 1flMUXdPILUax5RPK1Mg0YkOSkZfNcv7KtVH9Ex36vzh4S4OEgdXs9VycLHdaksDKX
	 s5Bw77JEkUvuc+ck3nif4EeuO2X7OAT4QD9JLQ14eqk8D9/FnbZ8HhEwQ/Xu+Gzykb
	 X9Uwq2H8S4mRdC7eh3Rw9t6chAL0KfqyjU/yqaClAVh8M4GYP1a4M2Aw+UCmxj+SrL
	 D/cU5pMsbhaG9ZZMi50mCClsxl/AAmRVzpwleMghsMGyiBO/MOjVjpmLs/fxSq4u41
	 9kH0lnsPpd4Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF06DC7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 16:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168045270577.14935.1271925652408946943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33af6d4845d242ab156c2711bce0acd0d2176ce44f13fc2720d3f464e6537fc5
Date: Sun, 02 Apr 2023 16:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680452705
