Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B04227EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645588285;
	h=To:Subject:From:Message-Id:Date;
	bh=eStC4Fo0kJujk8hqcvPumdriOIjzOH7EA2LSt6SVHlY=;
	b=GKmPHm31SvvThtpEUyLXScMXZDDGKbjn3XVzBIa/kgKtdlKlJ3c3YSDalSoXazYn
	XlJooAr4okKgEZmXxDoSvC7FL1CvqtHTFTK17973DUwOfWj6TwngQzIWBYylLwSFyyd
	tNCpG0nfGwCZ/nXu5j2Y+QlUhWRn/wQZSa4iCjmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645588285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eStC4Fo0kJujk8hqcvPumdriOIjzOH7EA2LSt6SVHlY=;
	b=Ip1Shhk5+ZomzSlvpg1gyhprNZJq6fDg/yjYTS09RV3TVIUfeqlo9j9Epjx6tImA
	3bNMlnYOEFcRyFz2Hhy/9YRvwCUrynKAjDzvdhcMZK9WGIXND64/9xNCu5IiRKUqEiX
	uXa6aNREzb5bnGuXsZyzsoH1j0HShO5FL2f6QkKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24b485ab-5e11fe58-eeca-46da-833e-b99f01c4801e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea08bfdea091bf7fb414716f0cfc18f67e2b88a8b17e36acd760473a74de66cd
Date: Wed, 23 Feb 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645588284
