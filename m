Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AB93C1E
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659220852;
	h=To:Subject:From:Message-Id:Date;
	bh=qxnpCP0/PndSAQEVQ1eewlZUScXs0aQ13viJV8jlm1k=;
	b=ewYSW92p1icYxQQITA5xNla/vbJWLyl6nNhNy5MKc8Gc4HDoC12Cwrt0pMNNZ8Wk
	O9UIZr9iFOhhwbsd0THpfiZLjPKIaevY+jUhAuZyBcvxzivmUo0Dm7pVaSimDu65TMh
	NGgXuTEj8dq8JHHerRyKNnE8c5jBdc/aUCgTBXQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659220852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qxnpCP0/PndSAQEVQ1eewlZUScXs0aQ13viJV8jlm1k=;
	b=IzdRy8P5t4pOkruRh3KmWx3pJl1Xw6bNX6PYEYEqOq5DIxhSoJUu04caB633qo/B
	9z0V4xe/rjkjaGUNzWdVu4otNcKBighwg2DCBLqMBVmyCLPSh/DqI+3uKun7AxSe6vF
	jB4ffY7/0Dy6rrEGhMSL6iVds3jMuk2QyfMFR3uA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825144ff86-3ccb0080-30cb-47d0-ab79-cf8944f75988-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ca44b9e47760178f857773f58140ae9f5c49213d837b8b013c0822dca985c43
Date: Sat, 30 Jul 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659220852
