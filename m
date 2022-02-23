Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77F8EBD
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645639585;
	h=To:Subject:From:Message-Id:Date;
	bh=nH16SMehoXTrpAuRhu2aGuq77iJhWxlA3L1HCqsgXdI=;
	b=Sfvx4XI4oQFoskZ4Fd7tTBR7lqdGeK0MISoplKeIAm6+A+6pAGaoDhAdMy0rlAxX
	Ernqtf1hno6HDs5Aaf3N1oYiJ6HHaTE4YKGj+Z8kpKnyqdf6n6606IR40864idl38Kv
	bgv6ttGfoXjJFN9eSiMDZllitUvTw+8T+f2eJn7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645639585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nH16SMehoXTrpAuRhu2aGuq77iJhWxlA3L1HCqsgXdI=;
	b=Gt4fLKQ6Q2T/Z5Ne3hiOoQegkxrdUG7RpfiUeoP9q7L8ACjgSEhqHe0jeGWaHChD
	aVj93kOS9ecdr5XCmvaa9ProqNTSjqmTgZmwkKc3DrU7ufoWmOlJMdPzjPaqtY1GMh2
	JN7MahZS4oCimJbSzEByP3XXNEUwpoQC5Xv/sL+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27c34ccc-2ef06a2a-7bdb-48a1-9ecd-a8c2aeec886a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f52d4b98e0a838583cfe4bc5612695291856f89206584f799dca841a297204e
Date: Wed, 23 Feb 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645639584
