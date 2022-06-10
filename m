Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF302F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 22:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654899119;
	h=To:Subject:From:Message-Id:Date;
	bh=BOUDA6/iqBsUjNZl0C5EfKsvpAyPoNGX8+R5Bioh7RI=;
	b=L7pXujM/9xxfmD+rMnL2HVrHSdNjSxVj8zDnZkmW115ZAfsXA1WpKNdgoxsFblf0
	I5A0YVEHOfBf3cGtDFjVHpHIFxKKxag/3LNBtgCSrX4iFRmPIlgLDIkd6+DUMZ4NiEW
	sstMlykad94avaSHUHFeOEoACUNprGJtkErR+jV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654899119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BOUDA6/iqBsUjNZl0C5EfKsvpAyPoNGX8+R5Bioh7RI=;
	b=aD53k6tUena+gMDxf/fVmAPFbuQCEcv9OoxApMArrIH196HLsv5UnkD3RmOzof5Z
	WIbvrxUSmp23121tJ7nZoVhz73UCQ7PYHcD8+8XEaZX0iFnlOMRvExAGKmkmwrvQZ/Z
	G4/v/8okatnF0xRWTN3Va7nfr4C/emTSGs5llJzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814fac94fa-f473431b-d4e5-49f3-b028-1fdb17def6c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1104294c162182bb881404082ea8ce750b224e949adf7b74b881fcadbd1dc09
Date: Fri, 10 Jun 2022 22:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654899119
