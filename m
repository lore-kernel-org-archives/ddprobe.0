Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5622F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657020412;
	h=To:Subject:From:Message-Id:Date;
	bh=Cm6TUUh5zV3lRS8mQpTNWCctoE5U/P1rlpl/nm+KnKc=;
	b=NCZYbWrnYerXcERlmIHUUYmTKoKNYK8nOctwrr4L5+etXOc0nWbCj6SmZKjTxgJW
	fWQBqwEXHBGtOndzNACFSXsGQbzQd2ad/7aaNVrMNdmmbdo3QPfsG2gpXaWbS3LNlRR
	HCNvsPKFtzXZtj7MztVemoGcMlzv19USvundFe/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657020412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cm6TUUh5zV3lRS8mQpTNWCctoE5U/P1rlpl/nm+KnKc=;
	b=ay5kCqUkW73zHrMqbXJ09UnBvmVP9bpe/GawTWy/JzYQJg5p/flFVegHHFJCfMqX
	/r1fAo1Wt4wenwOeCPqcBohFCd2Xd2s/jcVHW9CygzRQp9VpmUjj1Evw05x386+IIEr
	5MqT8qdfXGqgroQ9a8WSPJ1pciTk6//Hgcp1GLXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce1cf170-10d08650-2c27-4678-b3c6-46b97c27b35d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89d810b1e4ec6e04a708e8205c79c956ff2fed5cdffaa031c6fcace91dc4546b
Date: Tue, 5 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657020412
