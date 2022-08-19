Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7125923CD
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660907452;
	h=To:Subject:From:Message-Id:Date;
	bh=z/KgfO9jnuEK7ekXDqVXm+6daa0nesrwPQ+ipOlCjjo=;
	b=FqJml5v/0oVnTDz6qYggjicUhIA4zGnie2LjQGdwDPvo0e6Lgt9i6cJa6kj5BPJW
	IpuNEz6TgrpLHg8dnjLiYoV/7Fsssklwerw3xIzqtZwXUAzAoPkML/EOLhVLCVYX75C
	8/BV3rwFV9ngLtnu6Uq8rD5735sQxCuUs7h6W9TE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660907452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z/KgfO9jnuEK7ekXDqVXm+6daa0nesrwPQ+ipOlCjjo=;
	b=J/0sj9Kz9jVAJlFswBHYv+jnq1DvzXePfdDRJabt/pxafqNFuB0SZKgIbhsybQJl
	pSU/1aIj0KMaFEfRbf1Ji+PktCc8xi28znBsYc6qJ7vuREZlNyuerH3uMs+QawwTAwQ
	mpq9KMWRzgZOkKCNHmzDQksNEzy+c2/gcznioCPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5cc788f-56f2d4f6-76b5-4f09-afd2-6851478557fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6d9ca8adc07070df35832eb8fd6db68800cdde4f54360a26f1d7ed6cb8a3156
Date: Fri, 19 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660907452
