Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5317B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645961485;
	h=To:Subject:From:Message-Id:Date;
	bh=zsMUr9SXUI48Hw1d/rEeUSkWvtDpLMdydbyEoLZ6XMY=;
	b=flNHrjTfqg3OZ2ca5cgIFHOmCf0b6mAjLfKfkmNBMMea+KVXEngrlCoyZnLCfFnA
	ZjXyyVe7IkhHBsewOHgoUfJRQN3XgK3HC3F4P3GrKQgU3Y03PBmTdjNYybgiu8iO1G+
	cmKtHnjG8g7K6WITUianS2GeFr0hKL7VXBx/mcsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645961485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zsMUr9SXUI48Hw1d/rEeUSkWvtDpLMdydbyEoLZ6XMY=;
	b=AzOwSRI7PMG+jcGjnjoLxYeumQNJUIyBC/isAUVlZojgeyRyvLPhFCBrroapWWwq
	6DfRUECvvw4eudvgJyJzFCVqykETBs9yPDmwKAjeZG76Lk6ra9SvCiIBdL/EgdN7ovo
	PDbH5pzgZyukMAYPLIyjdxsr0qmSuRkqPVjSkhyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3af319f0-69ceda71-5d7c-4f69-b277-cbf7eac2af43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6e59fd5a82280019935161f053debac805455684f143982681ef695fbcaa2eb
Date: Sun, 27 Feb 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645961484
