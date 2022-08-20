Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174D920E7
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 06:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660978252;
	h=To:Subject:From:Message-Id:Date;
	bh=18L4RaQ60FsXMsdOG2Wu0PuqFjErI8lwI4IIaccxLHk=;
	b=T2rJiAHtdAsJ5EiyL1bUB64pEo6mlNWc9agC83vbAbSZKn3EiSq7vVUXv9rcIol0
	aI7/l90kkmwkzI+jWk7ItTp3/F4221OwmiDWKb3fl5PlRy8yNZn348X70n3KnuE/rTD
	kWPvkb3BDjX6gOKGBvanauc3Atqg2YiiTp2UOfAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660978252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=18L4RaQ60FsXMsdOG2Wu0PuqFjErI8lwI4IIaccxLHk=;
	b=L8k/GRC66IMwxHp28+XehJcauhgWiVCR4/3UIvHTFJSnj0xsKY6uBA2ArHhrkhqL
	6lE9FCItk9uDeyTzAITv8oKlkG11jw47AVkYBBss7CS1ALtTiglryt0dCZJ8bfCO4pn
	eFHSw5jc+3nMLlStWRxvy5EzUKkAz0Ys8BzDIinY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba04cae2-92c8ff2a-5bc1-49a6-bcf1-af6c9b05b839-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba44686d8f9adcc03bf51c7f1b4041ea4870e922ed15fba18adce636c5df2a3a
Date: Sat, 20 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660978252
