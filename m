Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F537FE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 06:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654237859;
	h=To:Subject:From:Message-Id:Date;
	bh=fqv1fRlRa8+9rUFYf3XxEmAlkfzK41LOD/GismXKW3c=;
	b=VLHdOWGjHO3YOR/IeKUpmH4cDXH1y2R7DTD5UGZlJdrheeOhJPBHAFd/PVZaV8HT
	cKW+AWxnHUAILUBm/craBForCDOgMPPhBDmgqsNFvxBkauyQmUtkD0gkoMepRqDkyq+
	ofYLkwCyS7CbflpksADr4drN7wxFw3gqMUHnfONU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654237859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fqv1fRlRa8+9rUFYf3XxEmAlkfzK41LOD/GismXKW3c=;
	b=S1nd01C6o+AUfak5q/rdGRDKZKYdMI9K0MYRW2VBULyrknszCZpcLC6jMaInz5l1
	AS0YGtq8dsL4lptxH3M6xG/JZFu+SmtMT50hARKGaWpsN3YQdvwSyeLWzIctt6/CWgF
	fKprlj1EczOYx8rm4bdF+HEIgzCRaqHi46TbWUjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128428dc9-e4ad1714-e314-4430-8142-d2b27670e113-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff98579aed71301cb96d37166585f070f0fc0a15e4651e0e91c4a334207c4c42
Date: Fri, 3 Jun 2022 06:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654237858
