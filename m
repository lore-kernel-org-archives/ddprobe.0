Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9FBA1374
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E438C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670677287;
	bh=I9qQW8f8jbP2edpJ+8pL5JTHrNPVYz8XJA6E5AgefLM=;
	h=To:Subject:From:Date:From;
	b=FLSugicKkeXz0c1j/ip74Kyjl678RfzUrvCliUhMjGn3OaDqmMVdLJ4psHFxamxi3
	 fawu+waHL/A70D29yMG/b0uzQxeqTGsswjsea1Muo2byfFkuiRjrpHq79oTkE2815R
	 DAzXvgJZn9hqL5BZlOFNkzd67yi0ZfV1bLd+WAjPvoGCjgC9Rc8rI+q9a7ZweULEQj
	 871LcH0DtwBQtAWxYJqamj80oKz8RN6ua1P/RKe7F4xA0TAUKORknY1EhXCHGV3wtX
	 kgrd6CgiXesUkp0gO7QhEpIfIqHCx9t21k3moP7lUKDGjtYkn+2sN705WejBw6Hno3
	 un+GjFdzmjHhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF0FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067728742.30743.6889853835525628102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9a3ad7ae7d78aa903b99da6246b75725246b9c6ae401e2550fdbe5706ede8b
Date: Sat, 10 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670677287
