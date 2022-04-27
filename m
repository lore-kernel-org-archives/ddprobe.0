Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232DC7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651074358;
	h=To:Subject:From:Message-Id:Date;
	bh=67tbqxphumXaf9s2MfMONy98OvML7FBakH87fWKcsac=;
	b=MyNCz6Re8ofVaCqUEHyJe7jjp71RlXElxAQ2MAPNGTN8PPYxet6ztawfHnpQ8dHR
	6F4zl1iKCPCrjApNoRDELq6mZUoTvioAm14Lqtp16rGXOb43mcdX8mzfLOTDXSirVCA
	7bmZFFiCpIBXLESVxJrNPMULrta6HvAyQ72C3xg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651074358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=67tbqxphumXaf9s2MfMONy98OvML7FBakH87fWKcsac=;
	b=Cy+P1+IglUz2mK2BW9icdQypVW5qyyDozblF7rPWzdnERBiyHHJZfcB4+VDpFt0e
	ofNzHbr0th1ND9MHjqElppGXbIOkQXQvdF5I7DNTueIo/Ah7TjFy6Ui1c3hbQ1A1X1t
	LV8x1E/4rWeoCYoD6FbaLc9STgn4hY/2UuRo3qp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806bb35c04-6eaae92e-43df-420d-94a3-1452145125a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75803c7a81081421f25f2f06ad4b3e8b67a026eb6f55febb94c220bd769fb849
Date: Wed, 27 Apr 2022 15:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651074358
