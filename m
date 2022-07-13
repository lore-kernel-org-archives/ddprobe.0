Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BA515A9
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657689412;
	h=To:Subject:From:Message-Id:Date;
	bh=4K0Vc4bOFEzbUp/YZBC8XlCXyoa6VUEma5SrrISKBxs=;
	b=HkHBrQ1PhEIWDXqzBU4lU/FteQdKgnjJRWxy4QiMDJz7XYult7sfBKVSwb/EYANR
	TkZ8mvMH4BmblwxusK+m1J0ZwCMZhzMbAZSFicVz3uIISbG0hqZeSqkl3cTCA4dWael
	m+wiH8XMMEgZZhXeSgOOGmoYvMV/d/luVmy3bhkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657689412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4K0Vc4bOFEzbUp/YZBC8XlCXyoa6VUEma5SrrISKBxs=;
	b=Ux23dpvtRPrve1/LWkCpgpgEjjm92aGHIo1J4WkYOo5Fr6wQ6X17vSv4wl017+i5
	Gr8U5om28bQQNWmoq33c5hrP9Wo3MaVPW5ul6i464iftXdAXTqve/sJe//rDGYY4AgB
	+zP3xX8JNYMpOwmLv5+V32Igvbjix6BE0oHGk0gE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5fd130f-e4aa42ff-84df-4c70-8fde-7075e1e63437-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0b09e991506172d6a8186e1ff84b1ba2e5e4dbb178d08a5cc0757d094defec9
Date: Wed, 13 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657689412
