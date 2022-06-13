Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E592F3D8E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 23:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655161619;
	h=To:Subject:From:Message-Id:Date;
	bh=x/KxWnyh3htRzp7lrZRpe2EUXtPeb/e1+ZTlTsly3bY=;
	b=k5WhxDvJs/+aubpGzctt2ryszKvxME/eWxBxD6ECnwv+jvY09ukRl9uz/E0wNdjR
	MD1Ix8i3PrjrzYR7bIm2/MP5TU1YqRpih8M/l50WM2ZaJagi5GXlbfBQhC6rj/c5nLx
	iA/9CwHCIwDGY33Ouckos05gXZySBg+9+bAZmtZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655161619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x/KxWnyh3htRzp7lrZRpe2EUXtPeb/e1+ZTlTsly3bY=;
	b=IFzdWKF/Pljfad2t8OR7q9Ez+tmuBBv6bM5MhmSzIYspR56gYV8daElp+fdaauH7
	Jal61LbWxYc5ZL+qoL21NcdjiGl3eiZCmPFFOfN1OR7CFBAHPfjHn8k6poNgA4DK4i9
	0mRDmA011Kau5nam0U/3oy3NFzA3TJ2K0sKjyMsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f52033a-3c3dd1bc-c3a1-4ea2-b3c0-f33c3c75b09d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bb7801a63e1a1760b0a3298014132708635cbe8ff8fa22ef67440a53bf61c57
Date: Mon, 13 Jun 2022 23:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655161619
