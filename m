Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFEF7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647936385;
	h=To:Subject:From:Message-Id:Date;
	bh=h2FLGH2Ill7HyqH6lbW/NawZLoihQaf9dxcOyPCICIo=;
	b=eAxnBmSGen9CEFEFOkmDoHUx1n+kaoznF5hBwvi7KxbwlGUucDDLbdDD2rslGSBG
	h6p9oXIexQ/Rf82xc+5Ki73R4qE3XK/IEk5LRL8mDrJ9sjO1OHbTGtvdjs3HKYeLOnX
	33+R7/d0L8yzUoPFLsUzt8iQx7OpdzumAqSh58rY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647936385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h2FLGH2Ill7HyqH6lbW/NawZLoihQaf9dxcOyPCICIo=;
	b=VO3czGaN4PrSLuXOeqagXNyKIfA9mZTxAjNSgui4eP/nTsr/1rCBXHhw8EF5uG9D
	ZZfRH1fV4svn1WUoebpxAuNF0jzr4ahZ7U3/ORbdKZ58s91aGZZv4FSWkKAffdd72wV
	CemCrEIffmhlL7RfOlB0AXc9beswB6Mox+E6C6Oo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0a9af2e-28ef7d48-7786-4f0d-ba94-052d8aa82e57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf394ff4beb940c487175e31dd1e279b7ca85cb558ecf9245fe61f49a742f7c8
Date: Tue, 22 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647936384
