Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2568D629
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656485212;
	h=To:Subject:From:Message-Id:Date;
	bh=/vqfHIPHvWYcN3A4a7e5KewgWsOYG7xPn6rfouHZAys=;
	b=dKrIxv264XXzbtkAn4xNxdPs7PsZ8AAsDEucyAmM083svt0+AYUPXybbbyUxBnUi
	ZcJmO5Of15/+s9/dcWAUS9SgG/MrT16LmtxepT2RFMj5VSR20+DED6jvybiXrq9mCeP
	ei4UsPRZ/kZbhX6pz5p4/VsTBEOKteksf9YZoxXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656485212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/vqfHIPHvWYcN3A4a7e5KewgWsOYG7xPn6rfouHZAys=;
	b=UstlJOXWUFZc1wwsrbip8RfVRnd1NR4nRwnjn/K9b/u1T2t40O2HXGqWdHHruzQO
	NfVdp7t5+uWGOMk4odpb5+rz4ec70e/DKpAkNFD2zZdT7RjO5YizAUgZVvDPOUkiMli
	bLZWgPV5UG7ryoH8OA0BonuRLOz0JDUgTvQStdhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae3670b0-302465cc-51cf-4251-b5f6-34879bf3e9e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: babbca593df58df106d2fbecc0a93653657d10c4926f005a6d42f060c709ae40
Date: Wed, 29 Jun 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656485212
