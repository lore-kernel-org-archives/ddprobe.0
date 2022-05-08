Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE1D10F8
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 06:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651991938;
	h=To:Subject:From:Message-Id:Date;
	bh=u41UfUbMhFfV9o4dK+AAAGDPydCXC3I7hKZET83hubE=;
	b=FCMf1xBGQGZLLzPwZvWI98u8baVS2FRCDwDERc/URzWhjhTegsQvxW5bg1lpJnUs
	MIzfuCrm52vdqujNRcKJwlbr7fHaOFZ+vF0pR3Ek1aI35eVDHGDhB4ls+hteKT42+N0
	wrCQkjJtCtdVZJhJv3+jw6e5KRGlJTBnGRyvzUaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651991938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u41UfUbMhFfV9o4dK+AAAGDPydCXC3I7hKZET83hubE=;
	b=idZhl9Zp6tgtJlJ/OwKdoE/T4Pjh7OgF4ZrklUTK2NI4X60uO/xVoMi92ynNU6sO
	r8quwYLrNlM68l8PVGJfFzoK94/y7WchD8cchEWBAVvaB0gznHYjI4VWDuMEISeh/3O
	T2uA009DBdE+bZd44jftkVruJFaca3+8D07CGUJM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a26484f4-9cc7ba51-9a4f-4cf3-a4cb-29cdb63f6294-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 148394354aa9a9fb9ca5a8b8cc8baac14cc79d99b27ba3e74af6813d6ada585a
Date: Sun, 8 May 2022 06:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651991938
