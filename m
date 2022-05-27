Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DF546AC
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 09:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653642659;
	h=To:Subject:From:Message-Id:Date;
	bh=aQsqnuezigLzAcj1pwsZCfJt42oBTK5EdfoCKNd8Z+o=;
	b=Vp5pRelYZXc7sReGoloDM/JecvpV9LlDy6nUq3aQSU3D3epiDtVP20wmJeheaVZq
	zg9f0mkRetVaxFZ5zs47BSwizvJm5pgtzNJ1lsH+qERSLUZnV8Vna8j7A1HLi5MFGsl
	Oh2sXu3ooH35A+tFGGvyMPmZ2mgnbi5MY0TBFcJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653642659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aQsqnuezigLzAcj1pwsZCfJt42oBTK5EdfoCKNd8Z+o=;
	b=Zaej7Yp8TtFeAoP45sSW+XjjNQIjrMfFLiDf5DVucgAUHtTFaCaITnv6qKD1xXdJ
	BtOf8nDOFKeERQGR2j0gtW5Anqfvfkx3jBf8LKtLrzEwyBe9Rm6ZENvBwbjqb/UsjWP
	yccOF/5J3fGIWlqMghzne6c2NdyBlf6XYkYKnyxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104c885a1-4c4b0afa-dcd6-426f-861f-b70feba35e01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34eb426d93c72f598ad89c5924bfb62a5fddbc548dd528caf86b67aa233f8904
Date: Fri, 27 May 2022 09:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653642659
