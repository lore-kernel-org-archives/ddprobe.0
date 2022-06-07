Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F213E7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 17:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654623119;
	h=To:Subject:From:Message-Id:Date;
	bh=iSxkh2i1HgmMmr3EMjTlOC3lu0YeVI8JEue6+0vKzCo=;
	b=jFPAY/39x/Rwg+BzKm6PQEqc1zCC/A3lqZ+9vCx9Gh56VpC0760s3hRUTGvk4ZSz
	HDSq4vqeVmMHWgaV+ta8L4pou1DltNs3kcnnPJytd03+u6GOS8Cn4gJ0oNgLRuIP8FX
	bS+qzT+GRukKs2By/8NOCbqrFR8ODWA7OQN2+sYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654623119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iSxkh2i1HgmMmr3EMjTlOC3lu0YeVI8JEue6+0vKzCo=;
	b=QCUFfGkNqq7iU4IjLUQi9n9opeH881tK6mYIk/N4OHMq2SX8IYVBsw9RsIehcjw6
	jdqNtMdpMmpq26NB1KrYPjG+2NlYXum0LeAz8jFYmBAUHriGEKx84lH6Jz1InyWs4gQ
	yM36Z4vPK5+GVXskKNXjBTiMisHI+vtqfIicoEMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f392781-27f033df-160b-49f7-baff-41e2ce7d5123-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21269d86bceb7207a2f4a25af87417becb214f9ff944ec3fc4da470a18d4dd54
Date: Tue, 7 Jun 2022 17:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654623119
