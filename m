Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D227B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 08:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650098398;
	h=To:Subject:From:Message-Id:Date;
	bh=XnuGz56FAfxtfMv4Es4X2imY3hRHic9oiXSmsZzp3nI=;
	b=CdB64wUHQhstj46eX+zkyDbINgdw7N2/cJoIPTRIoMZh6G5kQDiOzKEaYgu8PFsX
	WfsGkavsE0Fg2rSOlucqyEnqGMrPIFrAYMOIY6maAkP7fgumVN64cVkA4e+BhMYKJGu
	DWKYbyXuqn8z0MUzbBMSoP2wsi+qLRJPMPBKTHg8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650098398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XnuGz56FAfxtfMv4Es4X2imY3hRHic9oiXSmsZzp3nI=;
	b=cpj2sYwufeNNtGyv0blBdtAwq4JuFhEQSTUymjof8ijXchp7G1qVRiNTQWSlEMAU
	XGVg+ANDIOH7Xb6yDjFzMs27jYYFbmZdHf3pUapiOwEOI7JYCvEBDynkbm7psmiuVIa
	osMnVhEI+3HkqEgYviazyLMpj/9JdvFa2rfPrPNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018031876444-347a7cf1-6afb-4f73-ac87-af9c43905d39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e747c2122e2e358169a5b06e92c18224cf5b24e5a1929569e173b90cf70864fb
Date: Sat, 16 Apr 2022 08:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650098398
