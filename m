Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5047A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658013412;
	h=To:Subject:From:Message-Id:Date;
	bh=Dmwcno88VC7u+7D/FE7hKoPTS9brZEcNfz5oW+o15lc=;
	b=Y59sCLm4NxrXTbP2IYS+r/CPCZpKGhO2IcnWx9xY+IzHuSvIC3n7VTUA6ULN7V+I
	fwrbBMiRVivoTVa7EviTEBUk7K4Cr/sC7MBVOQ/DyIlDJ7QIwhlWqM9XWQTJguUV2u5
	3yYArcnXa4inlHo4KlU0y5WdEXAY6YC5cxbvMwHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658013412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dmwcno88VC7u+7D/FE7hKoPTS9brZEcNfz5oW+o15lc=;
	b=EdTYpAald2NQOVnh1Ufg3Rsv9L9pYnmPWuxQ8DzrtlwolQjDP/b+9eXXjS+J/yaL
	WmN/rzAW3VJhsxYBEKAhPGNOjSawNhc9LhBHoKjQgurRprywgeKBiM7p5TD1idTPk+H
	8BTi01uMg/u85QdcaOB83RLTTX6MMmS+z69LvyJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182094cebe8-4eb82fe4-318c-41c8-8cf4-516e01d79628-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a61612810b7513de521981dcaaeeec60cc256b53ecb6cc382d845e2db01dfb6
Date: Sat, 16 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658013412
