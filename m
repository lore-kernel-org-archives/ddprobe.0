Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0696C2F39
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657046812;
	h=To:Subject:From:Message-Id:Date;
	bh=5uGFnPeLGEP7Zh6jswIiAWROi3gwXu5BMa0+C0if1bU=;
	b=N6Psq+87z/G1S6OhAOcZyGz1oKTQn/BCbNMAOpZaNW5dOPrYdp2VSufgr0MvtvKY
	Dg3SMaNPvcdrMk/1V8nIZAd5u+X9JkXDN32NAkgNUbgTn14y34v68n/UqbLfUzdcYyJ
	WuC6mMGp1T+OM3RrnvHFcswhulU13XzVv8lagD0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657046812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5uGFnPeLGEP7Zh6jswIiAWROi3gwXu5BMa0+C0if1bU=;
	b=N2UQF7QxFzAwhibNS9i4I5a9NW3oYB9FVC7M/CK/4+2L9wjObbvbwMMcBhsNXLvQ
	Klt08RPGYv1/2a+PwijQxD//vTazp0QG6TXNqecbd8n7XtSltFKqlSfdAdjrnq0RHLq
	1mVAXmh9OFlPL9lTZc+SJtNxZUTDWQC3sdpvAYpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfafc69f-e213d866-1011-41cc-bcbe-13dd493e6617-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4419a2564fabc60dd140919c79a41cad26c7622d69592fc2fbc870e3da96528
Date: Tue, 5 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657046812
