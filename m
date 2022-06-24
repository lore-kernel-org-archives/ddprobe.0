Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C60C3FE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656109012;
	h=To:Subject:From:Message-Id:Date;
	bh=VokCQ0eFkQEe/Jg/g08ceMnBzYwc/CxzyhLLNFBiXd0=;
	b=L0BjTvbQig9kyUkD4hbzk+1EY1TNGE73zvvaTdq1is8ebFKNdy7JIEu12OBFh8L4
	PvioSc3ZptizfhHxVdeWFErybwWyyc9kLR+vD3OUJmaPrFNGyir1+1lfT4oS9qk60pn
	r8GXS7jGUSfqjbL6szZ6twl5lBbXzTtynJs1hHzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656109012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VokCQ0eFkQEe/Jg/g08ceMnBzYwc/CxzyhLLNFBiXd0=;
	b=CyIh9q//h+la3WGHAhY+M6zQPKwgPB4Iiszfd2VXs8rlPeQ06Ww3ntY3JkwYdKcM
	CqAMqJwHvIHKeujVTKAz/R0Bq7FuUiuv89BX3DGIj/TfLTXfhB77xWy7y0cnc2cXG/1
	BfdSwMTNmf+SZzR/QS20k3n1o+eYYNMk5TTPlZJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197ca153e-98a423a3-61b7-4352-93cb-611d5091d03d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccd27aa0495f48acbff5722cd22259846ba3c7a934c84cd940c88c9a3be16ec5
Date: Fri, 24 Jun 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656109012
