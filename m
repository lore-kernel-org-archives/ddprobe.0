Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BE72560
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656767212;
	h=To:Subject:From:Message-Id:Date;
	bh=jPPaSIiwbzuyDNj7bPdCLn5YBCTLjj2bWfCpTPW89rM=;
	b=C1nRobi37Odl0Gby1uyPAZEc4Y6a/++DzPcTF4BQgfX8mT7kWxfqFq2oSZwuajuT
	MuDZ18KKklEs95rbCLM2KauvHk/ES3E9AgFVuBev2EvHYhB5XQzf2rx1T0Ym+Mx6JpN
	ln9GIlrDogDB6Ne759VFBE8TjToaaukNCIXbMMM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656767212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jPPaSIiwbzuyDNj7bPdCLn5YBCTLjj2bWfCpTPW89rM=;
	b=Jbxpvqn1Y5QxM5hoyF0YOWXUJeOGypow0W6LeozIWOmpeT8PFImzIHNY8rSzZHBL
	q6np7ISOaItgE5XaJ1/whKMSxJMDB3N35LFXLgx1DT8llACo9eeajcT+3al0k/hX2eZ
	rvb56FK/cmXbSxjAe+h3gqfv0fa82WD35uwvdGik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf056b4d-fbb78808-ede0-4628-ad81-3dd3995fa0b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adf30ecb9edf0c5b55a2c3571d7877cd706f59451d827d3d1d480b9ed3c481d7
Date: Sat, 2 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656767212
