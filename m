Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59C1386
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 20:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654287899;
	h=To:Subject:From:Message-Id:Date;
	bh=E4tu9vR32eA6/JDxQpZYq7L8TSdC+YOK9iNFBGux9Ck=;
	b=SpM82P6qy3nVCUJQSjz2Sm9SPGr+73fBR7jpKN/RyyN8vnXwI799/6tz3NoejUaz
	MmV++DRUON7aaJwdJ/lAzgd9Y0aHSNtPzK91XNzzUHcwqMeJGfGvErD1QB2jF0WVxhg
	+lRL2BqbCs1t3O84zduvRRdkoOPjUPn0/4RSpx2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654287899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E4tu9vR32eA6/JDxQpZYq7L8TSdC+YOK9iNFBGux9Ck=;
	b=czpIyTQoZgOWrqxXdFY5zDVqkd8Zt3rXcSKSczrcR//nOnV7jSiAGKKqNI1Y/uEd
	lMLnn85XLJpO9WPruBD16OypwnodrjP5pngBdW0hx9f8hyr0ra19qHp8RJszZbZkWd3
	fooOQAGm9o43uBpSogJAoQJJGz3XJFQpQ5Qgk//0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b3e1a8d-a32cf7d6-7a58-4b0e-bf85-710ae3f77523-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d123783c658705074c97e4a6aa3abfbc0a3e84020ed930db6f5ac3a2005a0e9e
Date: Fri, 3 Jun 2022 20:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654287899
