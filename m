Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EB2291C
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658402212;
	h=To:Subject:From:Message-Id:Date;
	bh=Zud7EIJtrMRyFxPnUjMer7Cus7xvdgM67VfABmCtMYU=;
	b=higq4fRYgtkEBrY5jml43ZugYpfQml1WUlu+b9tdFhC6X4wOdNK7ghbuQ0ukQzX+
	ir6fSekSNitmGwUhse+Ie5ej3HevQfh3sqZc8tN2ScLsUMbpguNyphVBH5vQ9AokJVD
	SaZoJTDJX1sbvXbvqAdFXayDVJztxUYLfE6KBTSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658402212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zud7EIJtrMRyFxPnUjMer7Cus7xvdgM67VfABmCtMYU=;
	b=EE/RJgspz6JE2P4NDB2r9WCUvIdc8WleOJfcxGhqwsVjLaZStIYiuKEt29WxLast
	nLVQ1vTFi5jJMlagHnxIAFxRUJnjlvcBKuFE7Ms0TfOlCkHdBEPIFNlS2PaExGVPpLA
	B8R58hW1zSRKyGZjIpNVdTo5eB0HMyWLc6sETWGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018220798a00-ab4f78e8-eb55-4881-a928-ac0cdded82b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32fc450aa42ce7a890f63daab507e4b41ff02c889bfb2614d364f06bfbd91d66
Date: Thu, 21 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658402212
