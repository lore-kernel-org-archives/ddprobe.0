Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DCA7FA
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 09:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649497498;
	h=To:Subject:From:Message-Id:Date;
	bh=VjTlSmBKpo6LDzPNJ/qeUQWR48uXvJkEADsAzXe77Tk=;
	b=UnvOa8Z46dGKWbX4kOTVy1wLVU00Gezy3Jo/30YgDQp6NBLlBmljNw5il+aLSt5Y
	hWzxq8pVEgTokLmtJOyEVxsQ3HRzgk+anxd8ud0GoN9UUovjTS8U5SQG/WnXfc0hoie
	czAloQtqbTPlOmaSqklBOtreCmhOux50EPmx1Ru0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649497498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VjTlSmBKpo6LDzPNJ/qeUQWR48uXvJkEADsAzXe77Tk=;
	b=U/yCoaPL+aySZUx9OFl6v2UMaC+9H3xslaZpVmtLRqoEXRTqR3GTqQ1xlrpwwP8p
	9Kj+uKVtbJPsKq8oi84/r+ii4mOZqwrFda/GzHOc4+1PZb6Srp+w19A13OQfTAsqbDZ
	DeZyl2SZSowBUOGHPBDtFk7OysbWp8FL7SiEWtis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800db662b9-821f1bcc-1839-4e69-aff8-3bf08f8af3ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81f24f014c068673725218ed3c1301120936898a0d3063a94c550d0d6415b513
Date: Sat, 9 Apr 2022 09:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649497498
