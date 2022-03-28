Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4650D435A
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 11:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648467358;
	h=To:Subject:From:Message-Id:Date;
	bh=Kiam+eqDVRz/Sx3F+THkFYfht3JWRMToG8cw32obz/4=;
	b=KEIs5TML4K8usYqvYKf7Rfb5TFQXVAnhFFYYlTMa74TNNsBbtD0JdaiRN9evwrC9
	Y+fzhNZRo7ko3xGFLC56AXqLOfb2tbp69KVNr9DYA5T5FBeKjUh2AzV5z8OmFtRHUfs
	fSeWdwK7zK9U1YJOjsWXU+/PyveTFgTP9LitVMFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648467358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kiam+eqDVRz/Sx3F+THkFYfht3JWRMToG8cw32obz/4=;
	b=dLiQhuH3DR/WS31bmL+MPGfnyl8uRjGn3anx0fCtk6XuoQtHrLs5qDahTve3mH0k
	ZZQJIT1T+aGH2p2ss+WzTgX/89UJJR29tf+7MVaeFb5p6mJJTnxUCa7AnufxQa3BqJP
	OLtFhSxXmcrCsW6OSnSBLx1jiXjgl/+l0KeIRAio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd04fb233-11c5a860-5b63-4dbe-a34c-0a1db972c3b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a88c7702f7279298a7bc896b1ab271c7cf75d1daf37a0b2ea1d8c8d8db1e831b
Date: Mon, 28 Mar 2022 11:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648467358
