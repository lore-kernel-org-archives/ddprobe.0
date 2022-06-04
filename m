Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA671111A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 08:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654332959;
	h=To:Subject:From:Message-Id:Date;
	bh=oXwrvORqVmk8kg3WelDvySBw7QulJ3VtdMalpsPnvvA=;
	b=LsRKdF889e+BSzVu8pyTzInZqQGw0rTuYgt9T0qTLPp6PWpbHT9okl6BGUByrUuQ
	MBGbTRQOC9HWu8K3lUO14rNPUvx9gH+IzFklX9vA2WtHLUOEKSdcEJfNcVu1jAz6pl/
	4mbQYWt8XIt8UgXc9PRk8T3s4oNfyTtBluREyE/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654332959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oXwrvORqVmk8kg3WelDvySBw7QulJ3VtdMalpsPnvvA=;
	b=JeEoFHxi33oHi2DnUsOjGolpTdsA1dt5cm/HV8u2M23O+ahPHbVP4XTZAwXxin+l
	mFMFN4KlZPzIeBU/gGZdfMhPV0/BkVfANh2x+pIFkYqLruhyIo9wojZYPE+Biq/HAgK
	kI8PQmR0jc4o0wPZ6GcWY8QIFE6q4E81BR05cW98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812dedaa0c-49d939dd-c82f-42a5-9bac-ba97ad5a01fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21decbd75fda9daf52336670191acd1c8e72a1516e842df02c1a4dcc2aa86531
Date: Sat, 4 Jun 2022 08:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654332959
