Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A7F256D
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7006EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668420054;
	bh=DFRM+BBW3NrK1YDtEkdRCVqV3DnaNu/hDUDzRKa6+RQ=;
	h=To:Subject:From:Date:From;
	b=dMKvt3o5BACxZOoWHD/VXMPjmtGXd5Bpf8u+SCmbqoMlGBoxdwR2h3b4oh6N1UDnc
	 6XlrGLS45kGxtoRZ6Yao0bnpUhTFlWeDqNg1BU8YpwghPds9OpJ6OqqPAGaE2ItnxP
	 ZWqzgyovoOZ5Oqutb6Bqm5CfR39ZMlTwMnZt+znTOMgX32TU0h1GQv+RizbTGuO0Do
	 lv0u1V4vcgfcLANTAHRNCNtj1wQwtuwWQOJOXeugE2WJhK90YR9Rs/FpBehSR9Fu9g
	 hyf82uH6W5o0wLoc3ORhOsm86NJSHApzhfTm+1kzlBrZQapw49QclQffZlsSY9/6Jc
	 mPmYa3FE/qNFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5624EC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842005434.24215.15368205423605466501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e795fd6dcada05fd63a396cc4859ff65d6e9f7838540459c573d27cc2626fab4
Date: Mon, 14 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668420054
