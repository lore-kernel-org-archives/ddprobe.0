Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619524437
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656815212;
	h=To:Subject:From:Message-Id:Date;
	bh=O5ycQdst+32xT/yZJBc/hzOd4hWT7JsOGNVYnrLlnsQ=;
	b=YS/z+L83NQTQJZjT6ORBtwRmqWwIRfqsZhTsEwFd/2AAJHlTnEQa7WbkwmIcKe5G
	d9PNgDcj727MfkmeMBDXYj4JPSa58MIcoQs4tD69tbwnlNEnGIOQeSLZ+Zd4pcMtWcB
	1fbNslV2NfcXG9jScZEzaThLSqpBSY35SRN8/UeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656815212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O5ycQdst+32xT/yZJBc/hzOd4hWT7JsOGNVYnrLlnsQ=;
	b=EbxlOnKE6wp6fK676VS0u09b8JJk9Ea63sbgSfMzTqWu/VBMw3tqxS6T2TXgF4XT
	dpLX2DAKa4pR6eA9HSmKpMRJ4KIaEknii64pKM/SPLd66lpa6bsDj3MHwYmZj9jda6p
	F3zAPcWs4lPlVaBJWy5IhnR4yYQ4Z6vl90moQKa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1e1d700-6528d029-9027-4372-9aaf-6e1be060723f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d24bb9dd873744ff59d5f38e3a3bec553a6a4f5209ba8a39b65cf53aa8ebbc51
Date: Sun, 3 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656815212
