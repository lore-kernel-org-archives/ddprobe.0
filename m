Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A8A7A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659888652;
	h=To:Subject:From:Message-Id:Date;
	bh=8W2P+FSKsLVmUs0C5BdsrwPdIX3EVI4Ac3mMkRdidnM=;
	b=Vx4YU8TtTlLiEHr61XwSd9NnM8uFGdcuhG7WzrqPP1HWv0mikmrN77yNbBfNcZ7r
	igFC5L0MXHFB988c1+u0/qRDTLaw1qDBf4aHD4XqBDXFDq91aXZu8AYcK+Qp7D2ruHQ
	CmODPkUhVU1H5SKLmb4ulyQe/ROfrFkzncTiOvxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659888652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8W2P+FSKsLVmUs0C5BdsrwPdIX3EVI4Ac3mMkRdidnM=;
	b=YnGy9SpUUyvKzngQpIlM98N4yHkNEM76N43jozJfwumfIehJl+x4mZLAB70JWh5o
	4x9c+WF8oLX0bqEXWSnU9HuKeaTY1lW0bHTRt51CQh9QnkiPpEFmwpnDPLmcJkWB9w/
	zQK7RYetxIbhvDFzmNlWof5ezXVxEezaVufdLm1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827912d10f-225ecb60-a7ee-45e7-b5ad-37fd586ce565-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bba9a24c653510beadd018267fa6b6a430cb79187ec517e1408f283930098bef
Date: Sun, 7 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659888652
