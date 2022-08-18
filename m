Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C50615AE
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660786852;
	h=To:Subject:From:Message-Id:Date;
	bh=JzCUs9uvep/bzfMS03IBGpyoX27SokgZ8cCX02++BQI=;
	b=AqhVYgQEBozIdpsfHzfTn4YKO37eDSgJqv8R2MkrP8GpdnAoBXc/PG/PrFS1z4sV
	gV1FXCZiBAOntGn7xYWC2uHh9sJAjWxK5u/Bh6iswoYyDHFsLHHIzzLZMTOV8b9Eo9k
	5FVO93QWAcx27ALLBPxm/Lw0Ac2z0LFea8RP1Ij0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660786852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JzCUs9uvep/bzfMS03IBGpyoX27SokgZ8cCX02++BQI=;
	b=f1kl9DYaRENwhEz97h8p6bN+DlLig7FA3LPRzb0z5CUU0Clwz1B3yYjf0J73FdMt
	FjLZ+a3XQsnw0WtceoIQRu2VJWrnLJuup+LK08JTS9s901dw4loFqhwYmmCuSeB6wEX
	PeEHIfJDgc0FeabSgWmzMUvPZNbJyWvnyh5hqWgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae9c42e7-27e23420-8c66-4512-bdda-67e9e491fa4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 456f401c2802e8962959a071be9c5144189062fa2e712c4156745f8106a74563
Date: Thu, 18 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660786852
