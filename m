Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6CF366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660275053;
	h=To:Subject:From:Message-Id:Date;
	bh=/HdiD7PIDuHeDW3O8A0SgwVoKZbRGzZIR+X5TGsF6/8=;
	b=YtwAxBZLM2etHpxFeY0ULGmPEOb/0VlICF18yI6+V7ipJZ6QH0y+vRGNeg06Ueft
	RcnyOqBeLQuyZpTPDXwIB/EWE2ZBE/5axnfXxoWRXmhI6xjhEmjNuro9aPxPjnEtW39
	bkZWuJX/M4qJXoh+eMFN/8y1jRIZiKirrD+Ghx2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660275053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/HdiD7PIDuHeDW3O8A0SgwVoKZbRGzZIR+X5TGsF6/8=;
	b=evGMD3mtxTSkUvBDNXLn9/Txv4EdcKLkQphLaPxH8+UtEsQoxza8rLwp5iVnE/t1
	4DhVg3n8o0hxD6oSn42yEWaybTU7gmopn12oDmpzMzHXS4q5jGlRD8RaE+U7/nMVGT6
	rX3AdQlhxxgKaTu4HRU3hIfqlZX4Y03u9uy3sR+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182901acff6-a5377552-4014-46d6-bb6d-503827de3586-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7b0f0129e00d0b97bc6b43b2a771edd80fcdb8ea2bd656952bc4718bac3bbb5
Date: Fri, 12 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660275052
