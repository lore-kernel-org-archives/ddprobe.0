Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F811ED8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657374412;
	h=To:Subject:From:Message-Id:Date;
	bh=sFLsBmTfkFtb9iM8NNFLWhQrdARp+bklXJBc4c/HhjM=;
	b=RFxS0UiFQ1waB4sXj2/cc7EDahlX3jrd8ucSf/nICfUJlssMN0x7ZNzQqNLQDB1+
	hfaE+8Tc5sRfYfneuFkg4z/8kPIk02UNs4QeTuCqQ4+++pq+Kj1+uqosk38GhhpYPRC
	GqLBJQk9O9nQQxCGmX7u+yzH4jOlLKmMCx0YJN0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657374412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sFLsBmTfkFtb9iM8NNFLWhQrdARp+bklXJBc4c/HhjM=;
	b=hEUmhJCBzd6F8NuHLgYbU/WUdxOmb2G/v1V6ZxDYXq04F7Zl4BSmHxIX/B9+o74J
	8OnmIFbhAaSZASGVaqYcFth1LPdF+/UiK5Su8qN1qBfmRfVcEvmK/Qyz82ofYuM5Eux
	H2GBTNKP35Vdy2qimjro/N1iNZXpyNueK+BISFck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3368e31-f4382554-b383-4748-b72e-17cab7bb50d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b411b71c3825341e95a595bd47b2abef864d0864e5883a4e8d8f3501008b629a
Date: Sat, 9 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657374412
