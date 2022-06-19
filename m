Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15867B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 20:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655671499;
	h=To:Subject:From:Message-Id:Date;
	bh=3cdwhBXYIFTZU1IwoJnHS2cfvhX/aLZ8Ohsv9ZhrAJk=;
	b=KsZcvc6/kjsC1kPTal4IBO69LKR8DNGbHCKA3eZxD0I6ghsECIUlQuFN30STTjRY
	MG+DJiTPDzUptXlRUqcJOsxMu9Jl+ZYcAvDXLUq5eqO60RoCJ4JaBYQPRk23cSXT6uc
	lWXKDwZuiD7lmwZMyI5bMl71EGVHEPwP3ngdngaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655671499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3cdwhBXYIFTZU1IwoJnHS2cfvhX/aLZ8Ohsv9ZhrAJk=;
	b=BLiDtGLr+6qiQIupvolFSqU5yPydgnKI4eEFg0Yj60RIumA8CQ/IOfJ3oDdLV3DG
	eDV7mOXn+uRysVSxXd9jM94Mf/gzlkMxbseHZAkaHOV3vMUogfHlcVUuuftC35d4HZo
	vGjvRPX9DW2gTZvix/5+JQu84+neNSGLEJbzu9n0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817db629e8-05f1cbda-ca32-4c14-93a2-8599b9a5f0bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81600fc4704a7451731f39e9572e8d663c91b7fe8d2485848efbb315ed4fd88a
Date: Sun, 19 Jun 2022 20:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655671499
