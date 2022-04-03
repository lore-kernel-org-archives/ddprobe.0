Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E825A468D
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 02:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648951678;
	h=To:Subject:From:Message-Id:Date;
	bh=BLONxLKJOP5AFdO2JYqcnB+ApCpkYQCM7YIosaAb5rA=;
	b=YGNuCnhBsmSdgGrTnKfAqcCN1uZx1ud7Dm5xTgHB2A35N72PVRkWh4OUpTvPnuoK
	U3pz4r1s3FnJ8+nHR8h2MilouDtj2hkvNa0c2THcwTDVYO8d6UglMsRvNe+yJVUWNf4
	SvtspvhNPY4XASdZIN7Vsh1LnqG8oR98kbBSRWV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648951678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BLONxLKJOP5AFdO2JYqcnB+ApCpkYQCM7YIosaAb5rA=;
	b=HXeunhEus2LS6mAImwXJcsT76my+15PghrhGJPhEfasK1+67iMmVu2SRbRHMGH3B
	EvhALTDNpj4j6AXLPYD6ZSJr82nneTwWs+Yxs8aHeqsd2fJcUev0SRjHcpJqByf6ghD
	AWeTNsjidFmg+zgMt7AMwz/OTCWqznl/qN0NfSr0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed2dd545-a046d8d1-4762-40d0-86a3-ab5b06ffc2b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d33a0de827c2194a85ac1e96da5e71249727f4304f7559806d12683fb2596fb6
Date: Sun, 3 Apr 2022 02:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648951678
