Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B117E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 20:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654375019;
	h=To:Subject:From:Message-Id:Date;
	bh=dtMcNM/81a3980grngHTga0H8yjTpzjP1OieejQBd/k=;
	b=c640NZsWEkVxFFtqD6WrQSGMC1iXxnumGt6NFrZUa158h27/AANi+P5crayF8bVI
	kSwbHgqT6BeSbZdu98PWgsHnbf7c3CbwgltVGT/CNHQz3OADSwzYWShRPP4hM5bBXtu
	URRu50zc09q/3+iF6Gd4YU3YUBpZdHI/Bzc9+psE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654375019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtMcNM/81a3980grngHTga0H8yjTpzjP1OieejQBd/k=;
	b=fN9UP8AW4yEPd4lggPv5AucHaJQAg8skPsL6XCinbhT5VLBIgCvaUa/RaAiqBgaK
	qQuQfE8+wEelOZv2RJ/924kdHI7KVr0//QgC5qhGbEfBZEINtWVdrbFRcdUjZkI56Ph
	Saretlm5uA8LpjZ/n0JkqRE36ZmA24NUp3etYPFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181306f7364-41ab30c5-45a1-48c1-a8bd-f2a571985249-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54170dd44a3812e54766a2a4ea5b1ad0665757447aaf9ef750708c35dbdaa0a3
Date: Sat, 4 Jun 2022 20:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654375019
