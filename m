Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4994A1FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645131684;
	h=To:Subject:From:Message-Id:Date;
	bh=RoYpYDYyWIrIK3/s+cvjDWHeGGPRVqodok2748cBOPw=;
	b=H+DY172y5h3kXJr+/VjTUhsTHsTV9yDa67Bjfjo9vNO/lVrzf/dbMlDUzIKTaDyR
	HDRXdfoFEJXkKxqUIk/UizwwAciwxVg0kecwYxNcwFg7C0kY2q//H37LvjlsK5kM7td
	kpap7ojUP5HIL8Mf1QX11Uu6MqK6NaoqCAKDOWXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645131684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RoYpYDYyWIrIK3/s+cvjDWHeGGPRVqodok2748cBOPw=;
	b=SwxV/xbvgmgw8jReNrsad1/qzRuF3eRWhRGMkOlfTL3sZAyhe3Uk82qy66ty++hB
	BAnG/2YCcgX6xrDZh49JcOjU4/wre6zdzy2R78uzv5KIfuWwZlQr5ECq4kJVz1KJ5kA
	675sB2Z3KR71WfNFuxAgx9m3x/obzpeUJV3VGTaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f097d5ba5-561fae50-5f4f-4c54-8f0f-ddbb718eea23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f961d1b0f96cb9ba051f8ed42c165d08fcfe6b1cf75832cac20383dd0cfca3f5
Date: Thu, 17 Feb 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645131684
