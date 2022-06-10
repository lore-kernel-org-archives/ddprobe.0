Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F233A7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 09:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654855139;
	h=To:Subject:From:Message-Id:Date;
	bh=AywugvqnpMe4q9sZ4te4+Y0ikceyrtoK4Gy9/uQcpmg=;
	b=R5a/lJFq4ejZbw6d++1rEW5qlMB7OKSB3b4oifA7yuAbudNs0lxxqa4eL0raCDQf
	AEk0yAjnWLQFPig3uoMnSHTU2x/JRBtLINfWt7FPhJO3Hv2djB15e3QCjTPW+6c1h1e
	uR4lgB7kwJeDUyzsrCIr5hvoOsKp+05lTBNMF/XU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654855139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AywugvqnpMe4q9sZ4te4+Y0ikceyrtoK4Gy9/uQcpmg=;
	b=XBhDEOZ2ao7T8rGo7flndTAd4qek8cD2iCns1j15Klhjv8DYtSUGEvPZd1ejXSBB
	VjJ5wa4j/1dEqAFPDmHW5MPAuitJl/lXDPggFKus5gd0hVWY+ClMXWVCNwVPRO0Oa9N
	bP2YvkPBXPfnTkKFdauxmmvDdlzZTArf2JCSMdV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d0d7f8a-20764810-723a-41d7-b6b3-1259aba6c331-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c841eade62c6f6182a9024c7c4bd1217dc08e69c28b17d6448616dca1a9df326
Date: Fri, 10 Jun 2022 09:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654855139
