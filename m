Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CB042BD
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647979884;
	h=To:Subject:From:Message-Id:Date;
	bh=+RS6dn0n8NjbBFgd9HanByO+ot1mmh2GF6ER0LOAtdM=;
	b=JhlMAv7i6ahg3xxPagoPz1WZqZZBsJuupSUpsPE/hAscEpoeVsNnzy/509zD9oc2
	UNDauNGw9IZ4ZeUIhRbotz0kyQNwWO1t+PgTiGDQe+6rMMPUu8QD4je5dmJx+OqxRNU
	XETUFfHi0sgcvA667cfnuSCgQTLmXilfXyJPn+lE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647979884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+RS6dn0n8NjbBFgd9HanByO+ot1mmh2GF6ER0LOAtdM=;
	b=UTSDh7bxLFUN5n9430Eb8z88aJ/CbkvOm3UZb6z7POMFtbkJFIXTQEnUds4xgydI
	hkl9+229X1uSdHKWH+DV9dhj2abnLl7mdYedIQQxohjNjWVTcfgL4n/BJsNtDW4N33+
	+c5r2ey7jfcez7rPbzUW3hKujOUAs7nUfwfkyCfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb34170c5-5a11281c-dfa9-4ee8-b941-eeada1bd053d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39408df2d3ca47b5a7bc2fc5e84c5087414ec05527e41c824a95d2cd0c8a5a86
Date: Tue, 22 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647979884
