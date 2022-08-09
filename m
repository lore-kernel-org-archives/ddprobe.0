Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C8F5C95
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660031453;
	h=To:Subject:From:Message-Id:Date;
	bh=jY1/FsLFThqawfsFkQzG6zb/xe+ieYiuCU5tPFCvhlU=;
	b=dvTpIJ4oNsmSOCIk9S5zPe95Lnx760DYrkyrlOGl/9TxJOw7m2G7sbM3NyG/16A0
	QzhTBG4ygIGc5qY89eWLHxhQYjxdyKcQHfAY6yDGo/U/wSqdkk5+KXL9xDLM24zNJ5v
	kX38vmG1KwdzOnZ9z9ytvMONzwe7JuRoz7slsf3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660031453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jY1/FsLFThqawfsFkQzG6zb/xe+ieYiuCU5tPFCvhlU=;
	b=EUcYgZN+La3PHKsEI/kImtSqAG5QCFuyfQL6jDHg7lANySwUL4epi77sJKiXDkUe
	6jjUxU0W0/y3yrkkGvTicEAl/Q2HTIH/YonAgSR8HMcb9JjrteTG6vQ5nxX1zQsXrnU
	PzufBj+Ss1j+SDXXcqLPejIzLpg3IQKBEqLs4vXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828195c5ad-0c9103e3-dd25-4989-8f6e-052d89241aef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c0fd73826d4904ccd2c0f9b28f269ff496ca776197d99ba7aab0a8ddc6fa27b
Date: Tue, 9 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660031452
