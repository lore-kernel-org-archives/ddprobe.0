Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFC936F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658031412;
	h=To:Subject:From:Message-Id:Date;
	bh=+sEHLdcCBUmdadPdxIQ/ZCde/Kx49LJAMmFnsQ9PgW8=;
	b=PQ/7OeqiU5PJGiSoRHwuYoATo8brlfOQOvSHfBG52tZdVrqM4SauwzaCbYNKvMHo
	y2rl6T0JCghDTqc6zfY65VyaMH8/P1pkwKWJY3X1HXxeZb/M3l3zKDtAqc5gPGpdoQH
	BXnU0XW1I6WvTdEMtvscaNbb05guZ0tniN+B2GCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658031412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+sEHLdcCBUmdadPdxIQ/ZCde/Kx49LJAMmFnsQ9PgW8=;
	b=Y0mhxFMVRxxaT30oC9g15vrG59eTQ4Q+63V/4evf3eiGujbM7XWC9+3cTLygSKgS
	qbHjRcoxPnAfAHXgxVnkpkWsceO4Pxop/YnEPARTqaAZpy9vrl65lMFiJ2vBcXo3K6Z
	ZdEULWIVNVBwDm5HvafgI4AAah2n3xQFDrlcJM3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a5f9447-001331b3-060b-4697-bc96-aed4097e0b24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c9bdaa6d02dc4c6e17405c5a2c7c961ed92a44fde81b2a5eedefbfe2eb0e46a
Date: Sun, 17 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658031412
