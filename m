Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CD117C9
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 01:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653960179;
	h=To:Subject:From:Message-Id:Date;
	bh=/bMHykulxfDlKU8t56G+baTrvuEzYT9avrMZh9KnalU=;
	b=EW/+DgeJsRxMUsKiAIbBOrnfu8va/jF3EtBIi0bh73RnVPOR7BUr1/L50E5eUpNV
	2iIu9/tv9qG70c1HircX9Y/xNcSeqF1tzvJbNzzAHw+9jNnup7uz/T36oJsCdvuiHgP
	hIteCtAbEnt2xUdJEcljNHKsVYql1HVoCWkfTAnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653960179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/bMHykulxfDlKU8t56G+baTrvuEzYT9avrMZh9KnalU=;
	b=OoMx1GiS2sejt1wFbWevs/+JEWCJGlnLteF1E07udNDc1/o8ibf3CGp55jfTx9Eb
	lS/NMEW7U/iFCkJQ0tLEMFdEkj0Q/U0SaE8Fnr1S23/NqkiVUDQiA3zFB+3Xt8+Gn4C
	3gvvVlXvUdQ4vK1M8UNTXSD+BJ6NHINqAAlgwMsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018117b57e33-13211e39-8599-42f8-b064-cd0bd02a27e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee683c27b81bcf73c7ed1c603b809580fa6be5d59f5607bcc4f950edc085ebb7
Date: Tue, 31 May 2022 01:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653960179
