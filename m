Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A715429E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646351784;
	h=To:Subject:From:Message-Id:Date;
	bh=8f1k2P+ygCsLjZEue1DcjchEHgm4eNx0d4ZU4iBzg6U=;
	b=mkWyZlyRU5t8M3ldJl8U3pKOS8c1EIGMTYUN/Zzq1xY8c7fyzW7T5OQWPUX9EKIN
	Pvn6JDi5QiZwWCKhSPQIICUyBP1ZrLDGeddBx4qN4c84LPicfDGldJxhQkMoLWG1S1e
	TFZcOIg8EoqPAxJF3R+KjenKecF+YBZD6cq4CDAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646351784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8f1k2P+ygCsLjZEue1DcjchEHgm4eNx0d4ZU4iBzg6U=;
	b=OlwdDAa0cfstAyBxKs3YmhMFDxqTPZfpJpqwa7dORfTEzHzDgLQRBuQIhopiwCOO
	sPvfumOT1SiliZZYLxkZA/zFofa4j5V2f8f0wJTeXzoSAZmOdFAxmIUenntAKSTZb8w
	Cxfni3S2Svx753Q5zHHh3E6L8uCe5GTwbYrjR4uc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52369b33-ae0b3eb1-f3ff-4d52-8d66-35ba58084427-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ef21fe5eeb55f3bf122397b854f5ed7bab4531e72bc24e971e75e4c81d07245
Date: Thu, 3 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646351784
