Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9A97C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 12:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654948859;
	h=To:Subject:From:Message-Id:Date;
	bh=ZpP1JLXMQsrGdKInd+Plae0MF0WgM5YaQV3MYI9XyIk=;
	b=WhpGYD++CZN5rarDrsm7FgmAbFpHC1DsyZaobP1kbTu+agQMrYPkqEwRNSNekV78
	nUl5v1nwFqO9hYLgPz7tFh0YZ4MBIU7HVtPBXlxFTkDrmhoSByau0LujbPhHvrIDoUH
	aSdB4B/ntCnoufkDFz+cmbZ/EyqCeaJBxOpO8lj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654948859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZpP1JLXMQsrGdKInd+Plae0MF0WgM5YaQV3MYI9XyIk=;
	b=JXAXtraGTJPE2DRnu/t49nHIWidBQ6bcdammbJc3fY10zmeCTXGECx3nDKF/65cl
	4Ls/6Nxq2dct7962eyPlsIz8r6FxAJuy03eLUIrM/IsePXozLqf1UJDkn4rABE1v1nL
	hhqvC9ljW+BjgIj5+DPxS+GY6wIwvpi1zq+v7/EU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152a38dbd-eabcafed-e969-49b3-b09d-c897c9eb3457-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a26bea8d63d575ceeb17bc84fad5728b2294af5ddbfd71e70c4918cc32b9cde
Date: Sat, 11 Jun 2022 12:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654948859
