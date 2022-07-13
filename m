Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE44681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657723612;
	h=To:Subject:From:Message-Id:Date;
	bh=e6xEVj4/cvFbT/1u2nbw70mS47ya421hi1pCbGBAVM8=;
	b=kBfhie9iwukmIMmdecO12e44RrvsEeNd4aeiL0u5NAn9M/pUvBSc9koZpA27ULxr
	vIhIJXTXiANJ9AWDD+ndJBeAhGlvscvKfYNZK258DfC8VPg6o5X+6BRGedMf9xRcqw5
	eoN9mJRnZ3iKabUsG4msIKcV8loxnv5oj2S7nRx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657723612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e6xEVj4/cvFbT/1u2nbw70mS47ya421hi1pCbGBAVM8=;
	b=S31vsltBabtMdAplGncR17rZ0IiT+u8GbiNxfXhGtVMDbs5194h+pI42tWJ2NcJI
	3wl6jyHteHJzzt1zPArXbAOaGtm934PxKW5Y79nIfPoAWlXdqw1AyYryzR6tb9Zr6Eo
	qpGuF+045otLo/WBDuVP5tviJejNdQV8/xX+ZH2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f806ec6e-13d70465-7725-4bce-8b7c-cbebc886bd77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f083748959bcf2d34b3227d05d12d3c07077561584a686f37efe1bfecd305fc
Date: Wed, 13 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657723612
