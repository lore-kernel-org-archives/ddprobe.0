Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3232229A9
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 16:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657297012;
	h=To:Subject:From:Message-Id:Date;
	bh=XKSikztwsQ1NNCYpW/YPxbyJ6we+60KTHIeDP4I649Q=;
	b=OMIIiuueKIGdqSZI8jOnMOpCRQRzSyTJDFe8Vlkd/bNr/8wLwxFP3SUtbfi3JHCB
	fB6ifkXNpd0j/maYbspHjNP5QwM6XGIDgivJDoCZWL6CFimhdfgUDugpgWs3Oo8CAVB
	nkbmIYgiMr6XhccRtcwXyB3IVuhYprGLWFQ9jtUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657297012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XKSikztwsQ1NNCYpW/YPxbyJ6we+60KTHIeDP4I649Q=;
	b=H+EhW/TYxX0iiPZE2+Tv99FWVQd6/f3ImfUIaI/AnneYiBvjUBPS4MFO6KYgpz7d
	rMdaLUPMUoNKh2l8zqLG0PVix4VbP/Pj4iQDqczDhqkm0RfH1pFKThNg8bBf/i4EK66
	UFwlVmF+jnKg9Oht446KPuTpaMOrOKrSz61UgyEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de99867f-77a9065d-7742-4e66-bfc8-ec907727fdaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a35cb9790f5c9707848a61bffac9c1a7845a72666ccd852d0eac7d6614abfd0d
Date: Fri, 8 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657297012
