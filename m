Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF972F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 02:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645151185;
	h=To:Subject:From:Message-Id:Date;
	bh=K/WsnIYjhzLFd3qB4KIP/+4w/Eg7hX3vIgHE0QAUtsI=;
	b=VKjOsxO66hUj4ife2v7au9YI1CQqjVtycr3BhJkHqqoa9iHZX5xUUr9+35pxlNC7
	XtycoFaZBx8o8ekKnHD96Q9F6p2IFRVS5fMaNMrcPlAY53N6LZ1kRX/Z5dQBhtRxVOp
	eR+gbtGwou3cP3/7x9kz+u6cEuxZVgNUIRZpZMos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645151185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K/WsnIYjhzLFd3qB4KIP/+4w/Eg7hX3vIgHE0QAUtsI=;
	b=C65XNnnAsh1qD74/kC9pHX5ZCcmNkojJ4YxwsNgp6ImXQAP1gmIcmqYBL/U4qfal
	F7RSiOhRBJj9G4WxoEaq7GO3EiWI+ZnDYALVh0eg9w8qD8hVTstyGE8fHPo351q2F/V
	pD1j8UBsstXhORZTDwrQN9qdgCASgM5gnW91xKls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0aa6e777-76328892-de2a-4397-b18b-0f896da79297-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ac0aaff412e21ae6e0f2b2588205497547658001917ca254d51fe924ad46053
Date: Fri, 18 Feb 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645151184
