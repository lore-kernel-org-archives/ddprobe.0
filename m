Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EE7ECF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 13:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655818799;
	h=To:Subject:From:Message-Id:Date;
	bh=eG+WSNnQS3g8zgPJexmbD+wmzICHo4g9fz63FqqxfBA=;
	b=LWxKPKkufHxTNTun8wEqy0Zh2wN36pA50MiAkOHe6/Uv2FCBhjtnb6HvkF5MPJYz
	cO1JsfXbE3LSDlODHtv0WZm3/7RXIf5EIpZzOV4moDpR5BoPilVaCdeGTkZF0s7LjHN
	FbGPxGSJMqoGciSvcPl4330P7DIXONpAWU4gFmyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655818799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eG+WSNnQS3g8zgPJexmbD+wmzICHo4g9fz63FqqxfBA=;
	b=IcqzEHj+ORAjVcSHGa65ty1bskRrn2Ul2y3rVHcwBx70wwS/LuXtEw+jgq0EsGRF
	TG3f/gqRr7TT8aGXNc6oA1mWOZhpu0vFoPhA4AOjG2o/BTLHtOJatru6Ieml1g0sfFn
	houh5exqsE28nhwH/aT2sEN7UlzXJxcGzx5NrQnE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181867dc8a7-cabbc262-dd6b-4468-bf75-b3f35bd6b24d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d43fc6a73884d96e38020851c2ec072e8e6ab085444c02c3e2b8ef4a81028de
Date: Tue, 21 Jun 2022 13:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655818799
