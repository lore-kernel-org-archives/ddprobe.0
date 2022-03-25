Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE6C1FB7
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 03:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648177498;
	h=To:Subject:From:Message-Id:Date;
	bh=6Eqde63v1TOTQvh4kViBKDnTfVpEmcEvdVyDvuDyApQ=;
	b=HMEsjE52yXXzFaei5CJeGGOc5JBWwdNVI9dIi4rEgblfJdyPS1rCQHb3En4ME0gd
	sSE9dfu8S4+ZUrxxGxLO0nOWeLQ3t5dFPYj9dhbG64XL14vvpMWei9+5f3KsQggfo6+
	+jCeWHE3Bbh4dujlE99lS//lTdxj/dxfbZ1BxdEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648177498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Eqde63v1TOTQvh4kViBKDnTfVpEmcEvdVyDvuDyApQ=;
	b=WLyP4t+ewgnuoy5BvaiOcsjfrQ04Cp2MBmQ52EcC6KlsAR74ekfKS0anRscC2GGi
	Qb/A/2MIEJ4qt3iYuPDteGwue7wCntVTptdVAHzX9+cSxil/KJD7f6dsKQ5XzBspHul
	BCUIqSNMhZeGjjchLAINpx2zyqGXA+OTLF6rn2JA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbf08c8df-bb6197ef-bc06-4639-8bd8-689bd5ec2743-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89398fbd4a647d64c290b3d66dd39acaa7d33ac853709bbe28f98e2d91b18d48
Date: Fri, 25 Mar 2022 03:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648177498
