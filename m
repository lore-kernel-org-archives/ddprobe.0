Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D270E62A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656478012;
	h=To:Subject:From:Message-Id:Date;
	bh=WBcohlkSb27U8SlMIVwMWC5lz3DEABit7o+SnN6910Y=;
	b=JBzPkUzRkildBoZ9vX8NBd8fuc72bXL8ZmlrGl/sjBqbph607eE1TiiVyr6UzzKT
	zrLmDvOLtJMewxJs81uGnReyBAVceioq9n8+ualwdGzTB3rsof8I0xQxEmWWWtGa5vD
	xE9K50s/ETDZLTznqGR9Wbctc27Pz5XgdRDSuB58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656478012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WBcohlkSb27U8SlMIVwMWC5lz3DEABit7o+SnN6910Y=;
	b=AgWqLVFdLo6XCpcSAvBmoe9wr9H2oiGeihM9ZAeOAe50Hw+2JUucXmtMs9efi6pI
	dEGWEKmBrP6k9jQh2gFJ5u3/cpeR6AHP8COUHz1gsFiF+txlQs9xwxGrDSmOoZNrek6
	GhdSyCShWWh2HRZepMd1HlveHb+JIqSr1Y0pb4k4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181adc89365-53750b99-5333-406a-9362-130cf35d20eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 093c37e95b5d2b95b493154496057b72399c85aa5799f0d53d68585e6733e931
Date: Wed, 29 Jun 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656478012
