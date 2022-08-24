Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4056DA20
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661301052;
	h=To:Subject:From:Message-Id:Date;
	bh=jXROsXbRxMfWoLkGoNPEk2/L/pg5jW7QD2FAMP5ZeFQ=;
	b=H7G5vdrNTO1/Sfks76g5IrdDCiKTt9/vK6NQAVWffh0yKQgRFBxxEco4GwRpgNU3
	mEnYo11vKxXPlYiz+JxgK7fXsQ4hfDwQP+3kEJapnWJ8LLIi8DZUqF3CUUn6/w2b828
	AkkvXp5pcxldqaVTP/oAZbqVN5I3KQ2JpGSNknsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661301052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jXROsXbRxMfWoLkGoNPEk2/L/pg5jW7QD2FAMP5ZeFQ=;
	b=e/SbuchsUPF1Hj2qXsz1H7WPZX6cuLVgMlRDIBvFdg8KDwekDZICxUnnSIS8/F9p
	3sVsdG4qb8HR9phsuzJHS1xZyTJHrw3wpE8YnwgsgnssSUFxamYnvLYxno8rJtaesn4
	Ic78/PgCec+rfdX1c1x0BWOqQ/vIYeYO0nYz5ByE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd425479-cc46b2a3-7b32-4c4f-8eb0-547b475b7cbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45a1b4bb8e070e40a99fa8f7d88667eb2ebc7658393cd236e134401bfd7e3031
Date: Wed, 24 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661301052
