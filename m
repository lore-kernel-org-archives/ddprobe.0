Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E888043F2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 09:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655976899;
	h=To:Subject:From:Message-Id:Date;
	bh=Ldja9Q5CABFF4AMkrOVUq1X8X0zbyp5mlYHh5uE2pLk=;
	b=LC9+LdCGvQVnl+Q7qmppUDHr5QqB352Clcs8BebsJJBf93ip7uRQy3y9YgIB3z6k
	zZNQiddxqcgxpJCllC2udQSBAPksdurKTNsQePLyKxCnudSZw4BLa73i847Esl8WsRQ
	Vu1jm523V/LEY12oGjIotQS9tYkFN6dRuhc6WCNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655976899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ldja9Q5CABFF4AMkrOVUq1X8X0zbyp5mlYHh5uE2pLk=;
	b=igi2Y24anQMjK4EjKkAEPuHTefL3hMYcXaGTJ9Q49RM5WxCi5I1EEJCGER7kdF3J
	LjW/hH8ol5JBfg9h/TAzxTNqLuDQpEpI7DjWiHrnFcG2hWkLbxAuAOhlh0/bNum6rTc
	8QTXHUDFpbg5wZ8euIM74CzDLWbu/HwRrHTYhMI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818fea32a9-16809fb8-427b-4239-9eca-27d7efb9eccc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84f57d06ee92389f4c0780c2c48b2c91272edfd6e3321caefa1c56343cefc199
Date: Thu, 23 Jun 2022 09:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655976899
