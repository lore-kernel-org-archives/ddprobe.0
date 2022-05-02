Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924C12F32
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 19:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651518718;
	h=To:Subject:From:Message-Id:Date;
	bh=UnwDBPJBVvcYp7tgfUcYAx6H8uuQGfPx4mJQQvkzgaY=;
	b=FfTybEuA/1bLTi3SQLkDvyVkieTHM8ma70LBbh9YTC+GOzCfHPWkRbZzEIiz8uWC
	DNSQzg2ukriQN22VvVIvmnEr8dpfZZqXV4zh5mEAwTYuAEgaAmFyrNceUqR9ia4l/P0
	C3c4agH8WqQZ9SEbNioGdn5NSpQG+DNLI2GlFVgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651518718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UnwDBPJBVvcYp7tgfUcYAx6H8uuQGfPx4mJQQvkzgaY=;
	b=a1/LFlLqBO5byz6c4tzfpQ8E1TEOCGcmPOzQIbfJPtaKJg9m+UDLlQ6oss0s9avZ
	H5TEpW+jf3sUS0Qdugge3966Uf7Pn8nal0CZuqH6HsJXJN1pOW9MER+tvJZc8570UgE
	i2709zGUfScjVhtlTQJOGEIynuLctZ9uSWGrXxKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180862fc167-634ade91-d0ca-4a20-a665-173d1effe40c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58c54bebc7b105e89e19289324e735302ff0fe19df04f616da15f2c15d954d8a
Date: Mon, 2 May 2022 19:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651518718
