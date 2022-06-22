Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED84110A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 07:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655883960;
	h=To:Subject:From:Message-Id:Date;
	bh=ZeYZAdjsC1DmbBLTBmYiEkdiBi710aufgtYmNE8i6p8=;
	b=S1F0pVX67VLGeQFP+CqDG/Wgc9VWoB3TrsAtQbJdgrfe9lR5wey2Ud+JGqoK4mQW
	OYD2nkoDYHPJwpV2Evu/gTPW9sk5iNMUTUjj0JQYENe6nl9Oojm1R/8iX5Q/StzV0sf
	vH6sVtlvWRl/4Gz5ldxFXdvxsY4oAEZ9N5FddpKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655883960;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZeYZAdjsC1DmbBLTBmYiEkdiBi710aufgtYmNE8i6p8=;
	b=VPfz142J3XWgvvxVXu3MmryGtEtAXqxsuPKCviI5xp76/ndhkJNoH3BCxjXtMcnz
	zS+hVGwWwcAqN7GO1Gt01I121+EMBby0E3WWflQz9dsIkCA9Ga2KO8UVgfbzR8Mf1H/
	89wpUz8JEvRPPyQ01OM0Nn9Y7C1zmOznEPaVSXRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a600bd5-b7460238-7ae3-4ac8-a5e1-a8f99aa959d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2def586d155a9c5e125d287753c317f220f965423ab29da51fb978533156d11a
Date: Wed, 22 Jun 2022 07:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655883959
