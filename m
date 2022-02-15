Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5695DA2C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644913884;
	h=To:Subject:From:Message-Id:Date;
	bh=kdpc3QhthWpaLIv7gswGI285FyFMUWqp8OUDKH6H6Xc=;
	b=SGXTTdD3nNhWClRGy0J0iLQ4nNynJFr5xC1sEjaWN2ASpdHjrXdVO5zkfPV+03Nv
	q/wdimfLVfRjErX0Py5yykf9TFroWfDnfbl3EX9lojhTS2QF84zBdCUOOtw9Fczo3go
	EGEbmESVUqB4d99XbSxEwTp+WBcYXil3zwqOb92E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644913884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kdpc3QhthWpaLIv7gswGI285FyFMUWqp8OUDKH6H6Xc=;
	b=ZEKlIjR31K52jZo2xyDSVPSsW4tR1GqwmjqaZa5Kh086s6S1H/q86yC5nLBJKO+H
	/0H9vUVmliML9n9zarexSoSHcg7rAle7uKcYZQSgWh2nGTpNEz5ImJNQnQ6miV89VOW
	bG+WqdF3Fb46iERXtRvkqpd0vOEYxhWQUkVG+lZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc81fe56-7c88eb88-f4aa-4b95-95b3-0b5637f939e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9634eb79dd8f65fd9fdd23cbec0ca58d7005edb744226bd4cd765371d80cfdd1
Date: Tue, 15 Feb 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644913884
