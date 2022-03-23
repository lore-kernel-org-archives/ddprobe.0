Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0556AB9
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 23:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648078678;
	h=To:Subject:From:Message-Id:Date;
	bh=i7g6+nd6vcSs/hQ+Zk3/bkqdukwfuCMTiWDVDqL0Hr0=;
	b=PLOFnox3p2VbUznFQ7MsUspKrKh/IlClbZIijhOlizmHOy5gDxFXZD3Tx9PsBgee
	CWuziwUohrkEX/v0HJJ+6V1yL1qC0+VUzKKL3OsgxO/Opt9iCUgFI8OMk7cY7nDxLmD
	7awn0HmwYzW9Vk4xaR3U8D+Wp/FUfpKyQcD9kYZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648078678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i7g6+nd6vcSs/hQ+Zk3/bkqdukwfuCMTiWDVDqL0Hr0=;
	b=Ya8c1C71kAzNg3k/KF63mikhN5L37XAXY15bBmNWNPiTkuTeDA52KKTyscpdpbxr
	F9V43jnDHBwP4WNQpqHBW7L3yaiZr8N2Rf18ajcXY1NypxcPnaWtWP6XRdizN1zJGcB
	ru63LkZ+XY8YyieE6UD2vBY5KKwPx66Fzu69dV2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb924e901-da69ae78-b790-4b12-8857-a2330da068c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41b6e5cfb0324fb3c2f4ea9db057a37368933617dd3d75fb9edc3224b2263495
Date: Wed, 23 Mar 2022 23:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648078678
