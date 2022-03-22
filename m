Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DFAA7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647911484;
	h=To:Subject:From:Message-Id:Date;
	bh=4NkNDMt6JPVYX33KY+QpIlAZLNj+LYccZh4atvvXj5o=;
	b=J+OJSjpk1WKBxMhv3jazP5snYWQos8lr+e5MTbomr7HsIOAs21tVJaVHcs/te9Mi
	SA0uAZv8F1yrylLPDpIYxgO262W2w8xCEa1qgTNOAJ1KeEDW7aKZRWXvzd/Pb+tU5bN
	ZUf+XFIqd/YpUP0UKlMb5WdbKrZ/in3UbfN5WYRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647911484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4NkNDMt6JPVYX33KY+QpIlAZLNj+LYccZh4atvvXj5o=;
	b=TutKsNnLmsQvaDxQhB4B+Go2b/kCktUE1djqSQOv/Il3hqWpms22T3jyrYNfbvWN
	H5xSvxKz4p2ObS1UmZP0JXbbirBzjV5MJb5dlwvzwQz3wqUrgYJ1qCJZKRgX9TP9Tf0
	apEcKDaSGtb9lXjfB1hRNmzWaBISRbAzm+SeJmqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf2dbd5b-6c6f9e97-5af3-4b18-b005-4f48c81eb364-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee3073ca379000818c5fe8d7ac73893165eea98a2f4ff9962df87163c9e0b7ee
Date: Tue, 22 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647911484
