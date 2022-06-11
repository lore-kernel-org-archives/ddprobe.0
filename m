Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB08A7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 19:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654976939;
	h=To:Subject:From:Message-Id:Date;
	bh=u4OnIEcr+1+T/vYS7sXphYPpWW/WuK0d7rawJ6QBdBk=;
	b=KfVVB9ayrt04zc2a5vtWUIbYP/iIHupnAnPY4DZw5YQGZdHWz1quwT+S55RsBSgS
	7v6oIaKEPyqPx7aO0pXhK2jD8ghOc9ELXeLV/ScypwUjTiWXI+WjqhgmmlAD8K6bSMd
	4O268n9mKAibYXOavDMdVsg+CLeYt2YWVHnyNd1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654976939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u4OnIEcr+1+T/vYS7sXphYPpWW/WuK0d7rawJ6QBdBk=;
	b=H/gc1kTYqP/tSed7XhcMcCtDd3BV0H2yQIiF+Z5A3KYVNDn7gMH/KaExllptPHBq
	reqH0L2Pgh8xtVuLEevUMqLopDkGvMiMQLlwemO2NJVwLFOJUeq97z63BA2LECpcb5j
	/FqY1YnxVQJsnL0z32vYSXtQRf5si69Yp989r/lE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018154500540-4a6c6443-08a3-4535-88a5-ba0422c27864-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06fb5eaa973003add7cd195de79a1777e57e92df1f9f4a44b365b29a23c4c7d3
Date: Sat, 11 Jun 2022 19:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654976939
