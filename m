Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F19B15A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 09:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654594619;
	h=To:Subject:From:Message-Id:Date;
	bh=RE8TH3GRqyumiyj43XGC9F0ufSVbcQXwslbFNep95oA=;
	b=KDra8rtCGA40iFOHNKO7d9dYJ9PIKRvxs7uvkj0aZTptOfJDTf/y3/RasBAkkvAw
	6mcapor/K14D558HPQPxJkL/O7ABYWZB5vSrnprLt4wNi7+N1zENX/ExcXtHyJ2GNuU
	HFuj2NgAnBKUOaYipUOrFPRHsJYV8LbSg82OzHYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654594619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RE8TH3GRqyumiyj43XGC9F0ufSVbcQXwslbFNep95oA=;
	b=RipMB7OzhH7cGEhkMJ36ZqfL7X7pMUg9mgXiVQ6WQe2O6hWTeoLqaWaZ0CUGhkM/
	ukxTzSvEJVvG0uDbySQPNJJ79DEtl9KAfh4ED5RsqGru5yyNF7aLeU4xDvZDIn6zZrj
	8NVvWqIUXfut7YCX2lTLGkfCYjS6Pvc+SXWIhs9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d86477c-c745422c-ac3a-46c0-8f46-1d2f35bb203e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c81fd739a3ce7b50218fcaf58a84bbff8883ec0d7b86ffa7fc1edfcfa18ac79
Date: Tue, 7 Jun 2022 09:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654594619
