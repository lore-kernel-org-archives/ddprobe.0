Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FF320E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660189252;
	h=To:Subject:From:Message-Id:Date;
	bh=TX4g/H123EH1s6/11ENpiqIFJBfaAIYtUMGFM8p4mqw=;
	b=WyWAbtFb7xqmE0pbabmhjBIDCc4wmUu6LB2RIszbb54maO3qAiy8uHDUmqe6oA5T
	Ik8xOJX4ehp5aUXP8PBOBFhDJ/Z6oTW7rnj6FN1lxJpAxpCUm0oiQDV645B8FvbE+Jo
	8v48VpmVvNmnagNDtrjn6YTG/jhdjLPEiJGGSMtQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660189252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TX4g/H123EH1s6/11ENpiqIFJBfaAIYtUMGFM8p4mqw=;
	b=hJhD0HCDqT/BDsOKdUvPtdO700LxZvrQFYWbUJOr5thuLwbJE1mPBFt/PpDUduIe
	C4LN1Tz/1qRe1C8n5UNMCkAZf3VCG/sCSRvYqlETW1IJ0JW3OumFCXz8xX6q81XJSyS
	4u6VQYkdSpdZkC+47Fl5BJ1CV3sSRI/KoDAErcGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828afd9bf2-e1f5fc40-4f6d-42d3-ba7d-dc31fb6e8ce1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26cded931fd9bcc4d8dc83c7855d5fea70a9bbf808153a9e494d413a8b9a7971
Date: Thu, 11 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660189252
