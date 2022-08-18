Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BD63C1D
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660821052;
	h=To:Subject:From:Message-Id:Date;
	bh=apTtsQ11C8X9vLTDRB8mN3R8anZYj5JqgBqeEWjKkSE=;
	b=RwCgJF0H8g4Drhxy+gwYMamhsYifHze9sWTVFBkAa2wZiEkfZ1cbq7G3R1TFbimM
	8gcg6R0duNnr9GOoEwXykvCBE0N8GzaMRh/A77RbQrqe6WYiTYrT6rqUNhZtZYZ+FAK
	kIP3F0CSg7tsTVJDaU8qWG4WhWoDlEzua8PBeZh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660821052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=apTtsQ11C8X9vLTDRB8mN3R8anZYj5JqgBqeEWjKkSE=;
	b=gwJxWvF46OhFPzt7GofAIWQK5cHKauoSSiYGJVH8cIWQIEb6ml90s7lc/9eZVNWd
	+DUvNbhFrvExcVfXZOL2vxUjTLJ201yPBrLKj16L7+hKbUb8UEbLOf/bzB7Q9rEyPvz
	NuYe7OqMw2VeRxwPDxr/h1AnX9tWmlaCDDjOTUdE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0a61c9f-4df9b1b4-18f8-4af9-8365-fa526584284d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c7fef1e7db988607a0e8d2138230d16ae6be1f03d9bb8839f750884d8ddba2b
Date: Thu, 18 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660821052
