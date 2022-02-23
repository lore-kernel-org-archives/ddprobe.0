Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5E02F5C
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645654884;
	h=To:Subject:From:Message-Id:Date;
	bh=8ubg5OA+JQw1Zck5KA92Th7Gtlp7IBqPkxi2lX4CAYE=;
	b=R/rbRN4nEbQEKpR38SIZ0inj795aaeEi96eUTHNcszobfmVIN100S8NCvzb94d13
	LGOhKeiGKc6Ktvhdauy3mKtqM/DFrx4p2MGSe4zt0Gwodnkv+fte8poYol88mNNQZqW
	dnwVphfp/Vj5bCu6wuXOw9PyIEPaEi4G1fWzZf2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645654884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ubg5OA+JQw1Zck5KA92Th7Gtlp7IBqPkxi2lX4CAYE=;
	b=g+eIcl/tpIeLwRaNh4bDaB6QUdQgUBpINnFhxtGFu2ebzg0BpU9v0iiYCBHNp9rz
	k2DhZOTgXUtk5VMlYxPiTib3hwUmW3UynkUX7z4DRBBwXeTZHomAbWKCv3agtP64jUo
	TnOfL2tk+ZKNnvbtoxGiAgGSmwloHnqqHOXZNabE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28acc1f1-105c81f0-8440-456c-b48b-a125da0636a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a731f100da4763e85db278db90b271634b9de99c47a85c3156723537837d7516
Date: Wed, 23 Feb 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645654884
