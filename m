Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80622802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647925884;
	h=To:Subject:From:Message-Id:Date;
	bh=WOgJU3/SVehq73e0Yz4Ku8F5zFTDUUhdvUrz5gdFrqM=;
	b=cHxS1PqumRQ1etnB4ji4UwjbumGrRv+FVscPw0ZvqBqL/gVQ5T+hfy6Ur0RxxOFe
	XCaC3DffzDc/PqcBu+8WAW09ISI6ej9p3f64KLDMC3A64hoVnGlXDpQyen9WDPa/cTS
	VHZQlMmsBKZJOgNTyTO8SQNiaK742PAIOUnt4yXg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647925884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WOgJU3/SVehq73e0Yz4Ku8F5zFTDUUhdvUrz5gdFrqM=;
	b=XVws/xwV9br94qMFwVJr/89tyIZEQ4Uf3cFR1m92hZHWqnC8ldaqDCRJ8ui1pbeL
	G3tN2w9wYawL/v1BcmuwdMAUzsvE7hR8t81nxAO1F4NWfm7Ow+KrCVWYLR+tCtKhV9P
	bVkYQDFuxgrdv3WLfgIFOsXp4yZ4g3S83kzp7bUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0097736-087a8fdd-42fb-48ed-9da5-714e71eebda7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61ccf94871e07db33a372f25bd5e90f94a44e26d7908ca229a1735b588d0b4ef
Date: Tue, 22 Mar 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647925884
