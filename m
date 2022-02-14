Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DA57C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 11:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644838238;
	h=To:Subject:From:Message-Id:Date;
	bh=axRi5OxP1nhnRfcsY7wqmYaX91Rwx+9cVQh7+s282vE=;
	b=ftvczwi1Ldzke2biEgU0rUVpqbUHrYkP7nGdMgyD7ixHt0u0LC9ZqMWDSAtS4T+z
	1nBJGzttyBQhyg/oLgUm+OPkYzJAKPD7G2waOX5PZL9DH8wqaNVhLa7gRDy6CZCkaNZ
	gX1Xv0AlPaH9indfuYVw61D5nhf0vWAEv9UKPy5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644838238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=axRi5OxP1nhnRfcsY7wqmYaX91Rwx+9cVQh7+s282vE=;
	b=Ycq2pScHdWyKlhau8J2NPAr0+iiZCRL4TpTRyzBSsUxls/M1VGm4ULocNJ8P9hua
	Oy1peLZ3DpsQQReBakjTChT9iyWfJ4ZdnwEeNWnWPQ2VLL9dHEnIFWmCxm6Mtb3jfFr
	W0lzLylQptuVhd0g26DzzDDgSohpkk/8v75lgTEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef7ffb969-be96af83-7ef0-4dd4-94a0-57b93acc2a88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a6bda3bdbe3a199e74c04f89042a34790cdb0d1bac3f1d13c77aa93b832a3e4
Date: Mon, 14 Feb 2022 11:30:38 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644838238
