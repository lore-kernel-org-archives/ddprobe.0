Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7927E17CE
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660117853;
	h=To:Subject:From:Message-Id:Date;
	bh=Ru9/bvWbaajdkX+XIasPBQrBtv5E/krTnQiuCKSNV7w=;
	b=UnUG1bMTpZ5pcihJ+kV6WiXQyKBHLm40iXOvGHzlFvQnbvFa6qmho4JW5mfuGdZu
	2/yNbmjLXQWMsUr7VDRF8H+g7wJ2VFPbpMeYTiJwnwA+qMjmf3y3vnJRt7IOUbxDeX4
	gse8qiTp6lv3DiPdHdHxxRpOIVBhQbKOZq/hUiWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660117853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ru9/bvWbaajdkX+XIasPBQrBtv5E/krTnQiuCKSNV7w=;
	b=k8OnT8lQ7KYRkN8x81M23Ea74Yv+332UZaLGrz/WEFdH/pKBOCfegoH+KWh00D4b
	WQmcjNNm7GkUgwS79kmDoTqJLxhvFj9tpFaw5jOt557FzUVx98poCjLRuktfTvzE1mf
	a3+bqi4Tsivia9LNC65V5Fhxi0qW4g7Jpa3avb9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286bc21b0-d733d689-d650-4634-a2e1-d62a436db493-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92aedeb7b450e2b417b630915b393336c1e9f4fced419331f61062c1cf8d155c
Date: Wed, 10 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660117852
