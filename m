Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB6B1C32
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660627252;
	h=To:Subject:From:Message-Id:Date;
	bh=knctz0ayVLJffpkY/AJHNp30n0fYA2oLF4tA4A6xnQ0=;
	b=PiG4VSffRGItU7j9dWNqTSruIz0MT/JhR9MuMtLQhQlu5E/52tf0EDWTp8959OLf
	VXBD2PjwQ44o3w3ubUpIMcuc8SFJuJOUIKtyiwIQGTLXLDz6QwNj0lhW0uOyPpBrGu0
	ukjjk4KCGKkvTILb0M9AgA3X0pfGHQbFTvcyzQXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660627252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=knctz0ayVLJffpkY/AJHNp30n0fYA2oLF4tA4A6xnQ0=;
	b=HwNfLaphp+V3gPNwKpoHGKXE7fWy0VbO9QDj9MNIgThDWfCgB8Co2i+ptFVz9Z6i
	W4ApXgv7y/Rbl/ORWZlj9W/vZO0tCBiQEouLZeMa9+ztoU+y5JpJzHIzU94/unfCxkQ
	PcpUPg1CtoUlqjN7SZfdYkeGmSowd+Xc0hZAHU00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a518f588-9c1f48fa-0415-4b24-8545-4b2538415844-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32cd4cdde576533e819c3c670e64977923323902f277d70ebc15cd4bbb12ae01
Date: Tue, 16 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660627252
