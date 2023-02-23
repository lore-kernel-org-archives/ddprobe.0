Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509F0AD26
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A09C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677191105;
	bh=4Wb+LP2HK6RV6nckl8X7faccUVxb4iGaIdAy05dVkj4=;
	h=To:Subject:From:Date:From;
	b=r9Y13YSMJNXwhOpQKRPem6prYdcsqJB3TF8G3JEBLO9HmAgWPzRZs2gzZ97aEbPJ/
	 yq42r86HVR1+G/LsThNzxm6gGqdvzhJrivgUzZbS6HELktnLFZVrheRVLtlH0By+ZU
	 ODdVXgBwDjzQl03S1ibuPgMWmL1jtZ2hZ4TWqyJQXewXIm1pKFvQjCWOGQYf+ETzWd
	 lXzntBDxYkjGz56wJ21SQ+odLiJGRHY7q5Oqcg7udz1XzlCKqz+PDJ0t8eAezEClo8
	 1DKkLCoQ3N4u6ILMtL8YbFgCCQX2E0CUir92HrE9iZEw5xSOPgm5/tZcZaVgrWKFQz
	 K1l5FfHNd6m5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53D6C64ED6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167719110577.4556.10649872180406842354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08a2bd9bc1a351eb7b0a9e92962a73b1191d17ecd727abec7e961b6565025ba
Date: Thu, 23 Feb 2023 22:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677191105
