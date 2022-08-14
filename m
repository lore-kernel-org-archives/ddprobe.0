Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A647E8
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660452652;
	h=To:Subject:From:Message-Id:Date;
	bh=6MGtbwo0MIgZdoWOkHl4CCmsecuvkS85I6XyLqKau9s=;
	b=Pdnspj9FShbbl4AdGtfk3EWn9HLWiGZFcXEWdQ+rZMtqXfYE2zBUypQDZkViRaeF
	REVLsKk9TDcZK+ZoRmdFRIEglp9sKWCNJHeIx6Y6UDQf5iSA9uLRS3gccgV6XRvLXXH
	JOv7yzBSh6fEUz9spADZH4hO9XMtSR7mG2TX7Dlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660452652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6MGtbwo0MIgZdoWOkHl4CCmsecuvkS85I6XyLqKau9s=;
	b=cs4BS87r8Kp/SKEgPTznF6NuxqMzTWUpXO/zmc7CbSqfL0yZXpWrM7T6s/CEiytK
	Z3mt/5BD/YIVT6OxiTanQE6TwL0CRUF6Gfx/1+avUYge85ylBqNT8HwV+JO3iPScXgb
	8PQxxByjqsCe99961QlvO1AWuRY4Zzn0MjUk88Qo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ab0c634-2166f3d9-9340-4df3-abb2-c1fe6f68aafa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16ebaf32f8f21624b95d30105c96e5eae6d67fa27ba3899597d83ecc2995bdb1
Date: Sun, 14 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660452652
