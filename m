Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF183639
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 14:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650204838;
	h=To:Subject:From:Message-Id:Date;
	bh=4JbcmQlWn4oKBSvrVnt82TH1OYlBKzoPRTyEBm6Vzzw=;
	b=exfiFlY09BuKaQ0TJpqXKHKVnKogT2E50vLVzMnxN/XCCm/tt55LyR8RBHaQS2kr
	tMfyyrd2pCUn0WnI7FxYA1ZDMKlWXvaveV/wiD4g6meP2zxFE/jkeyfTazOcXjWxWcz
	ZfQy/V8uM7vrb1BNUcG7eWkvG818UbkPpQxm+1Es=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650204838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4JbcmQlWn4oKBSvrVnt82TH1OYlBKzoPRTyEBm6Vzzw=;
	b=d4cB1q8sIOucgOT2z1Tl5VN+2vsP/iyXVZilXKn2Xg3XNFRJFnW+ApUkEtE2WB1d
	HnTNKwGW6RpKolMb4wF7fALDhHEE6OyxdYWzwPyGrmpkDaN6eYW1dPeEwo8RK6EUkVq
	KkKu2G/tb2zNB6zABEmt2TJ//6SCV6kbMwv8eFV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037df898f-2ea1bf66-4567-4110-a644-471b2c346612-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55f9a9cf227418605281d9287c6ca3b4361d361f85ab92376305d3c4249684b4
Date: Sun, 17 Apr 2022 14:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650204838
