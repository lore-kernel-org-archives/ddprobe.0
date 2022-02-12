Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5AA7C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644633654;
	h=To:Subject:From:Message-Id:Date;
	bh=J+g/Opi3dFW0tXBhg1eFOmBkXXHAjAYw3B1mNcm5RbM=;
	b=G5C1ytOFalqcCUyzt+sM7EQDcCxAV/BQ62FrmSQ9zsPrSjRN9N/ekIBT5Tf8KNoB
	5m6gh5KVkhX2nrNIkHuZBBFHB+We0uriJQJRmdeyqwM1EGTn85epilXWnuwCd5e/bKo
	+XxIFfrIU7L8dYdf4dqPi4Eyvphr6WROhlvQciiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644633654;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+g/Opi3dFW0tXBhg1eFOmBkXXHAjAYw3B1mNcm5RbM=;
	b=YeCUZZ9qwK48bUaSLzfR2MQnoyZIgdXTnIWjuVlwRkQLZfWfEmvIk+h7+83cG8sB
	yLYz5RHKps4yAgVnF5FEohFFiwEOfaB/sO4ijEOsvII/NUHUqs0tIk1P8Iytk2oNUhk
	gM03GRk8aRehDjgWb147CPDB4XWYR9iQPoW6pJOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eebce03df-54072737-70fc-4b3d-a161-c7c436d7ca61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6127bca795ffcd09ff50d58dbd2f41327c6383a445f545cf763ef886821d5b7f
Date: Sat, 12 Feb 2022 02:40:54 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644633653
