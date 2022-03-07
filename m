Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58117E
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646671885;
	h=To:Subject:From:Message-Id:Date;
	bh=BVY6NKimnNO1Jkqh2mKkSaiuiB1N4qBcajjSI7DLbtI=;
	b=egqdegoXuv8ubE8s3gti3CH+gDxpnn+KLhLfhSDQTLiapwWInNy2TN5Of3QzCoB2
	vAUqOnmX8fg6yArI25tABsMPKnz9aO89CUxyulvcjwIKG0Efut2KurEyM+6KT3fwS9B
	7PFQyoI3I/WH3X6WulLrvbDP2r5Uma1LTAcqOJGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646671885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BVY6NKimnNO1Jkqh2mKkSaiuiB1N4qBcajjSI7DLbtI=;
	b=SrZsJGCLZJREZF/5FAufm2vRJiIcAQYrF4vymHaQJTOd+5MPDVL/XfE13NQDlG3p
	WeAhYDe1qKygEA4LK+ZYjLMA15QhGpCv4Agfk8frtgWfxyXDVnhqxmmbod8JPsGsA2u
	yiWGecxYKcro5f2mYTp8/IGRPVLxwMQKIE4Meq3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f654af212-09152615-8bb6-473d-b8ee-cf714e37a85d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cce9f83005663b69976f11b32afa7e443ee869c5d2e4c7b509863f90102642e9
Date: Mon, 7 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646671884
