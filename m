Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFDD7E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 05:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651037698;
	h=To:Subject:From:Message-Id:Date;
	bh=9jJ8E95puWxmSXQJxgidxWQ3gWl+yHz6DUw6SLiM4iM=;
	b=E/2lgW+DwUSRO8vw3IUFCeq5NwVlPY7UWNLkCQhI4pijUr/vgv0jgf4quFqXj052
	g8jhoQXjNnXznX6dTGT4lzNfiE5VCfYjGgIg6A9wcanZollMPa8axuBFC5/njgPV3j5
	wRGkQ6WzHp5qqKXbqA6h7ar7uyGPZFkUZROe44+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651037698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9jJ8E95puWxmSXQJxgidxWQ3gWl+yHz6DUw6SLiM4iM=;
	b=VKIrG1NJ+t7iKUCsgLbKCvsxSthS8UQqC9m3nnYAx6lY7ANzIk6NOhbdBlCqO7ub
	J6k4u82vXdvzZLCwEgf9SeF2+MtG82FbLWHj/DnpuAD1DU/nFFVnoDndqzt16wTcrJs
	vPKBYEB9dKwk0ug6llXxoaMSuftbueOUQpM6XCRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806983f8d9-004c0a6c-f484-4cc7-b175-9feb46e7388d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ee7ee0d9510b6b423d96ba7f2b117f5063df0402ad1d4e45902debdc6d11113
Date: Wed, 27 Apr 2022 05:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651037698
