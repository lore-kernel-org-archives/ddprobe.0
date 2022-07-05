Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE3733EB
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657039012;
	h=To:Subject:From:Message-Id:Date;
	bh=7Q/7PfULWk2Jqg7jDOeA9hqaZyilhmuW5/UfcW1KYqw=;
	b=N/TSNWhE11YkAxDpJ/8+Pzfb3oAg5tqkTY+HcoODqL+VkdybIt6ZaR9hmOg0CNa4
	YCnLpwbPkWsA6hXiwWEvFptdoSCR6fc+3L8EDd/wZst4t1lCBGDQDxg6sGst5q8da0o
	SmOyylfdLCJVHEiBzrjcIkGcZkVshuDeqQ3o0Rq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657039012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Q/7PfULWk2Jqg7jDOeA9hqaZyilhmuW5/UfcW1KYqw=;
	b=QR99ZdbjS3iy+DDjp/mhDfEdxASX98nCOAFA/EU8ELdzWTR4dxQAJgUobwVdylUa
	zyUnFs7zpTCekGL50b560PC+3f+ja4luwH+2vqIJkhC7scAptkZUwqWW3R3DJEBudnb
	Awxmw1fO2gjzDkipoLj+dwW6gtVlLS/8m3OnqjKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf38c1af-daa2cabd-7365-4062-9e12-b0437517fc6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ec6f1fb68d64a86c13fc6e0d4a6f0ee5ff7c797480035c033dd605e7b413f14
Date: Tue, 5 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657039012
