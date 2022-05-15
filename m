Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50719806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 11:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652613900;
	h=To:Subject:From:Message-Id:Date;
	bh=IDeHdU/zYwwLguw6Mwdv06fxsOjAT+h9BwSzUzUmshk=;
	b=N8EGODGdV19CbAcBkErcg0vgZZiijbKGrQBndZwzA18gpRqE2BSOYBlCbEamVL3i
	QE5k3x8Kuj17ZQuyRprQQhxDtztmRi7k0g6tA13qYczCgqQc2C0cHM+D4GNqxmww2SE
	Oxaxf5CwmfE5Ff/i7JrTtjeI1USJO/UpQJO74fVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652613900;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IDeHdU/zYwwLguw6Mwdv06fxsOjAT+h9BwSzUzUmshk=;
	b=APnrCOCQxG2T/i1pxGJyLBJnJSoAlEtMN0dfGsuK0rj4m07w5qwEEWmhCY/ZwxMz
	8f/8sY3yac/vJTtJ77a93uUujd9IUaRhREg7oTyKckY2DDdaES9Sw3fk229LOsscsGK
	BIRwIeqIZ+AD7Izji/xjdGxV/tn7aLmV+53sFkQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c776e425-2829e65c-367d-4419-be94-cf3c563c995f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b352952ff6b23a9370cfb3473ec00999593ed1fda677cc8444f3bcbc7bdd7254
Date: Sun, 15 May 2022 11:25:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652613899
