Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E030F3201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 15:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655481599;
	h=To:Subject:From:Message-Id:Date;
	bh=hP2mK/xtM55MoZdPOqvVJqgkxd3i68axslrNgAhE05o=;
	b=Ad1LnndbODHM3kB23oAYmVIgaDISdwgg7T8NN8JTaId0ESgYDfjXGaGGrtBlTfI5
	YNYx6th1i0h802TicrPXjKVd3Voi7urt5sYPCj7EC+/x7Vn1IdJmLKq+gtPA5dqgjbO
	+JDq5fQ8jBMEp3h97YCsYgKWHlwkFM2G6WFjToIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655481599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hP2mK/xtM55MoZdPOqvVJqgkxd3i68axslrNgAhE05o=;
	b=LrFBEqfpHA4iYE+dXBpUN7DthB/Jn68+B5C/y0qv6RuOAWUbnIr+wI9eQJIP7SMD
	6WXcmc2Z5cbXlQW45XiuTFDkh1udcyeOEjwTxLYXQo30zn+bMjhr3jB9DzmONZzRzAl
	syYt8fxdCGRBic+COjUB6A0lE0/Yv/49u2EPwg5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172648513-114299d1-df15-4a4b-b098-7df262f61fd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19b614b622b59246ad930d4053a0583c3a29952d52d4dcb7e2f1a04585a35211
Date: Fri, 17 Jun 2022 15:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655481599
