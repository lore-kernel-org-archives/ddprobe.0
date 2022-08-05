Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5771AA3C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659684652;
	h=To:Subject:From:Message-Id:Date;
	bh=n5XksuSPanJfp95ulYCGD3d4iFyPPrupb8ZK6WWLCzQ=;
	b=IRcjAtwEbg480Q/Ncg57YL7BxPza9FqmlvYOktfTHEkOdJetOpg8mfx18Lk53mis
	rNmRnUjSzHdee3tY+vcwnZ0vkywwJmjM/mbl7YYW7qyVLK+qrJskjxVKyw0S8LksAl1
	4lgwOpo5Wpn8a4T2KAt+C9OJQZ8dGY0leRBiRifc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659684652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n5XksuSPanJfp95ulYCGD3d4iFyPPrupb8ZK6WWLCzQ=;
	b=B1WArCHQZSXjiQHOs/yXQR7agOMCFOkT65xVasQ4Qn0I1+VLAeQwfonPUumNxYPV
	akCB1dAfA5mNjbAxbvV6XD5lE4qeW9NeHivEIdz70xZRvwTyXWPULbaemZ02yUHm8mE
	UOEhcMxUjsOPQRYlcrRECxB1Bu7RCnSEfFJUzQbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826cea0610-7b7f18cb-0c20-4508-9220-b0706e0d69b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa29bb4b473c7f2069203ed6d81dda37ac0f20c467d0886e3eb8f9a68db19b6f
Date: Fri, 5 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659684652
