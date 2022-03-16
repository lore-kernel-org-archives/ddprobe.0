Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D4E2FAF
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647417985;
	h=To:Subject:From:Message-Id:Date;
	bh=hvfci6StoxESO3h8gxKVyjFxAef+0HwFebJtFLKvlHE=;
	b=U8iaUqCYWXsX34+0nRTUaBnyXjOwAKbOkIkkGp4raxNp5sZvSHlfZyyT53a2E8TA
	pRSX0MQXC9Zz+CKwaXh3ts5X/Dl4+vobrmJ9qUy0fuNn6FrHz73Z0Dh5Ss+w7r0iErd
	UvEgdtQJi/ZqgCMSDINDZ7gVjEq3c4Sm5nXLb8is=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647417985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hvfci6StoxESO3h8gxKVyjFxAef+0HwFebJtFLKvlHE=;
	b=ccOnCkQtu7uy7BfGU/KqHVFDSzArdRwp5nR4/pBcJWrbOriPDS3s8JTCzfl3awV/
	9JkGr7VC0aAM+MNT82X2XUOjgr0LeA4zYVDuIrYjdxiVzw7L/bg1RyeRUMduI5piSOO
	0AVpnEqUDGubD7LYcenUY1ZVPX467nNu3olQFXLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f91c3871d-509cfab7-cc87-44d9-8460-cde798df34fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 011402b56bf296bc2bffe003b5569c4be348ce09d438af55b1bf8e5826520949
Date: Wed, 16 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647417984
