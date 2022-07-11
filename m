Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7B61360
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657498612;
	h=To:Subject:From:Message-Id:Date;
	bh=hxPh78gQb99m4fpivAsf8ch5j/wuuLCcZGNy2pJOuK0=;
	b=Yk9Txy+u8KpXD6yx/4G+ug+kUVxOsCUaarMZEkvwG/0vF7hKAaJhrnyzZSPe37Bl
	CkhaQl4Qz+oovObwtFIF+bJUUYoKApSOcAwQTX1AScrqvk18k2Dw5RY+klksILHxjwd
	vJJlpfPXth32Ua9+T0yRHIOSlBZaNQND3iqANaFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657498612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hxPh78gQb99m4fpivAsf8ch5j/wuuLCcZGNy2pJOuK0=;
	b=eWTgAlErKHfqbKsx/+L5MQjhWK2AaXZ328VGVs6viZLT+x/Xmtydn7fkWMz4mx9R
	Ay2cviqLHM2Ie5PWac/9BiL1BiPkpeOvkN16M1Rbefeh0DIDZBrRQ1ltK+9ZNEGo0fu
	AB+ZOX2C0/y0hn1N9/SPE4r+GHgAM1AsA9P8aDok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea9db23e-47bf3d6c-6120-491f-9810-2d904fc91d51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c4740cf4c11b2d8bbfb1ff75d3ca1446ff9593ac3730ed72a055287160da505
Date: Mon, 11 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657498612
