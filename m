Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EBA2563
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657288612;
	h=To:Subject:From:Message-Id:Date;
	bh=CP8Zrc6aKbC6OdYaolUX+GTvxJC/ONna4KXEcMuO1qM=;
	b=bY2lXJLh9Erj0yDmStQDkHlvLCPhkJRqLmKj8ca+48J0vNJlB3Dgbm28CO/SKYKp
	OUlW/xMAaZ5i+fybnlEIqnAs+4Cvm/0UXwvgNxF9D160fcjg80M6tx4AEObP/wE/eGC
	pjZsyEoWjuE0z9dy9mRYTsaRLl/r35PZAU3UmrUk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657288612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CP8Zrc6aKbC6OdYaolUX+GTvxJC/ONna4KXEcMuO1qM=;
	b=S9qfTcGPAA9dhxxHhUFC7duoVQXHi4sd2IkgqUgujUHpxEi0+YEm0giNSEjCInEF
	s4aRmht5EABWsaYlW0ZElR5VamUP5i0DgPrxlDcISfzQDpj/nS/2GniP3YXnyyPzOVG
	kLDB4AGUOj8tFhJW7s0qaegEgim39k6Mh/t1XW38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de195a1b-fe7dbb8c-d8cb-4cbd-a955-4ae55566bb31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa36b61dc2f7de7be8c1efcb519a089391e5da40bc0c9c7803faeed48293f8c5
Date: Fri, 8 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657288612
