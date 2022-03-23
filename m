Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F6B1391
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648027284;
	h=To:Subject:From:Message-Id:Date;
	bh=fHX1oNCU+ti/cmWjILF3ZSf8VxRNnc22e2Smo74TMsM=;
	b=jQridnBuCBt+c2ZwAZcEafERp1cwBaD3tStEGHC9sFTZWiKsncu6z3YLTTntkXIO
	W9FWi1Swjw30DpDBVl8LrJLlhwAzmzxJYQ+NRSwlvVa2eQNnxspzQfeLBgQVyyoBhwW
	EJXSj9j+DO9nqRnq1mkGqKp38JH9+eHtJILUbv9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648027284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fHX1oNCU+ti/cmWjILF3ZSf8VxRNnc22e2Smo74TMsM=;
	b=ghyT4UuylVTwj9O/OtQxtc4iFcs9U5TJ2otJg+ttmT07t5YkixUc7WtCPv7f4iHq
	dHIvTVSxDqjwFY2AafW7o6dULj5RfK0M8uCxoIwEL+BLxTeLljgmCM6vLqwZM2pAs1b
	XxeRIg5lRmO6igucPWTL9TCFNXHoTXeK/GLcZtlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb614b510-b9a1bfa9-8f14-438f-836f-3482a3dab2b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e4786e9ad87de0bea218831bf628066f9938bd49118461d5e831f029f8f0c16
Date: Wed, 23 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648027284
