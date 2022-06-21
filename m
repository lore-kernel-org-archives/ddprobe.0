Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0168C7F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 00:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655771579;
	h=To:Subject:From:Message-Id:Date;
	bh=Qelq0/5YlnGvwP2dy2zaeGyvZ2xgWbpmqVegmxrtnN0=;
	b=ixFke1CxkxoPg4kz2FSFk3RvnRiI/1UHW8+dn6+cpJC+HjcnuPXayPhZnCTa7i9Q
	VWp3GzrbpTyDxnNfxZuHPLyWGtZY315xzE1gAw2Nf6OC8VGVNqdxoUriblfBy0W/RG6
	uOSuXR4k76iB2Ipf9TUi0QOfDd8yHXk4KRJVtZb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655771579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qelq0/5YlnGvwP2dy2zaeGyvZ2xgWbpmqVegmxrtnN0=;
	b=XBPEwkJuHvp9rfLNCRbA0yp7dPMeJFKU1QA0G1RNlIGThNOja8q1EHYK8wsF4gpc
	EbmdXivyCjI8CE61js37YhsVUhj7yAvNC5AMFP+UJE3dAqvWrL6Ma8dhmAgIji/E0YJ
	79eykDQZf5/T4magkLQbdVvxZHrSQdo17FKnQUMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183ad437d-4a967bfe-6308-4744-b3e2-48be6939d163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04adeea8db777b1aa362b13697a597e5bd69028ed172cdfb5504f3805e15250d
Date: Tue, 21 Jun 2022 00:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655771579
