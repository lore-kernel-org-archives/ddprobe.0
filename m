Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1708029A2
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 19:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652989079;
	h=To:Subject:From:Message-Id:Date;
	bh=OP0S6fzNSnoWtRhyVGkt9BHtOeVYlxDK4SPtQtgOFqA=;
	b=g3V0rELpxO4sIYjO8+GKp0g6dujCiI2pBV+p6E4qMAy5GW24somwv3Dskc0UmHsP
	6re80n3KySPwJIoS4q/Q4ywf5GXHMSZaSDc4Z9eUzZlaL3+jKRsIBEPpV75p32iOGga
	WNvtGoWH1G/Uw4zDGuIqMd9V8rrxg3V6CEFZR0pc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652989079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OP0S6fzNSnoWtRhyVGkt9BHtOeVYlxDK4SPtQtgOFqA=;
	b=jHegX2flOfS2HrzSOxxVGYEQAWJM4ZkQ9CUNrH9J5+BA6thelCp+rNDOC+iFcuGS
	XBxYmUlbtWWDytrTewrTCMAXgPi6qXHfn/kHflvFzdqy8rwZQaZF/OxpDE4rkUS4lrB
	T0h8U1do7PxPF02qsTqkTxjeUraKgrpdm9fsChRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ddd3af29-1fc375d5-344b-4071-8161-88768186d818-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f34b7aeb070dde6e912ba42ef253c2484cd9ba609d872d95fa5f89d6d6851037
Date: Thu, 19 May 2022 19:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652989079
