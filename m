Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059DE7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 10:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654855799;
	h=To:Subject:From:Message-Id:Date;
	bh=FaoO1QeYSE9arAXcSNAJdY990Y7Y2g/forSK8whXEdY=;
	b=JOz3qdQJP4ai1PWBHrxBwNNbl5zI1yuwJCrkFV9NFa1IkRdF7V6MqD9PDq6kd7yy
	gD7fHxaibAZYSMUYv7aCGSc9tXDXII4wJ+fZtx08vNhG4lW67oGbOuR+Ps3oBvjW8r6
	R3AqE591hhgeOpHPHoSqSuT2aQxS2VkWcuF8KzPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654855799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FaoO1QeYSE9arAXcSNAJdY990Y7Y2g/forSK8whXEdY=;
	b=jGW2yB70XFqNhg72Jss54keDZHMUNUwPQ3bE7L3QbLTP6GezTArMUc+ykyY3Ibon
	w8jCiY9B1Qz3sY6KvFciLJCHz4IhtJbN/ANtNLlSNAb2wRii17f2AQWUadc+yc7/Kdy
	GmFRzk124CYsXJD0qGnQV136ktorRkhHgGZaXl0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d1791b8-b9298d95-c602-41b5-847f-01af691bc47a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2723b3ee0130837d4482f3e822f5d265eb8281786e8c26d421b8a3c54136dd82
Date: Fri, 10 Jun 2022 10:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654855799
