Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32BD17EC
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657780612;
	h=To:Subject:From:Message-Id:Date;
	bh=xLTkZK35H3JV0WWH7+JESiJOfzmXD+/f77nFiLK7VMY=;
	b=cKdSXbP/6LHKaEThbz/vRW+fSgQxugbVqv4FoTq+uRRYIkHbXHo/jBSX8j/3Macy
	pkqTuOOcYrGPg1VpZrsWIrD18ATc7cgMAKsaeyF50vuQP4ZkyskGiraCEuR+9oBv119
	MnhEggaPk+5H5zm0+ReyMN3EhfyWWe2ZdCd3ptbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657780612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xLTkZK35H3JV0WWH7+JESiJOfzmXD+/f77nFiLK7VMY=;
	b=Aj40Px48ksZMhMZyA35Y4xYJWeVNhae2GFBU5XXQ4FcxjY2XE+xqrsNJyhiH0atX
	FbZU4FKpjCZCACkPov2mAMWpymBjW8T7UHrDqpfqc0JpXY03SaCsoGCKJnLOJ2oYmsU
	Zq8yU/+zuPAMsl5AmzsFRO8ZoOG81dXzxC0NMWFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb6cacba-ac3edd06-e790-4fee-a996-d5428ff08677-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74e66593a8c17bf64836157aa59ebab4d32fa88c26f5858364d4a81c24a40d25
Date: Thu, 14 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657780612
