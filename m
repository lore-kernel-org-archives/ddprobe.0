Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0603FE5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 23:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653781919;
	h=To:Subject:From:Message-Id:Date;
	bh=iOFJkWtGKwFzx67Q0zVv3Dx8nHd9ajUqXe8CRY/sNL4=;
	b=SLEPREif6ilhJuPsC2cOR+Lu/THWnggPoTVZkokjtcFbLsOhIuJZ1jkXH5fCOBvb
	qRXDeZOZPCYVRAEuhyqICxBN95FdGgt1Zvtr5Vbn46aI9yFPR1xY3tifCvdWZ7RT91i
	pvqPgjrrO+lUpOUJBEjzulnx4zVoFucawyApp9hk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653781919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iOFJkWtGKwFzx67Q0zVv3Dx8nHd9ajUqXe8CRY/sNL4=;
	b=cBYsd1pdJcEJmMKtaJmtw5wYavweqbvSofet8PTBVJLCo3wSzTWCSJlbzIVSO7x3
	NXZ5+ZU34sEGYCLUf9Zg3GW9XtLYQkQShKgFBjwaTNSiBE6hItEYhZDjKtS77BFxrg6
	oOpajn7O+vHTwl7Fg6ftVbOpFh3TWW1/1n0rKnkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d157631-3d768e3c-c2b7-42ea-aa59-c2853384c26c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d2bfa472914dda72e620e1989e1d22870768e422166ad4a2415bdb552000ff6
Date: Sat, 28 May 2022 23:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653781919
