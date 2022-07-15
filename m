Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D7433C0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657893412;
	h=To:Subject:From:Message-Id:Date;
	bh=tzRXQKdNMSOAxLOyzdrKP4U7n4E5FSmlhxT6ZMSCzKM=;
	b=X4dYjpqYyuqyUQe09BgPJ23Y6jHf6sOMv8q8nMfhRXgcCk/RXIfVGz0W2EhJZbJl
	Sc6hu7bogfnG5PmvELxBUyJCO/QurIi+jkSEDmDieVXBSEJy6H3nyWhjbYafn13N1pq
	zzPpLyhgIebwElk/eEHbb4ZcrLvtLTVnwbpoOoSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657893412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tzRXQKdNMSOAxLOyzdrKP4U7n4E5FSmlhxT6ZMSCzKM=;
	b=SOMBULUg8dGR9HSI5aZTcm1hlUxK4pAjWy6npp6I3NV1zt0sv4gZbAChfYUlPmyt
	R0qeU3tlVuTciZVvkB6cBx2ZEv5C6W/N2iN8PUXVn/6V89W3oU1Y0zEPSchfJi6yYLE
	Dr+WmnpDk2V++/RM8mE7ohYUds8ikYfBqNxSFIH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820225dd8a-5a31c05f-1a10-47d0-ac8a-ea6821779ea1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9391085a5d3d1cb51a9e96cdc1b840bb132601e2121839f735ece2c2a26b14d
Date: Fri, 15 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657893412
