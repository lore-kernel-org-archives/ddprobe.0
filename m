Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED442F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647447385;
	h=To:Subject:From:Message-Id:Date;
	bh=S5a99U5L9h6Dv5hauIP1AgjcDTDN1sPInlpk40OdWRE=;
	b=SAZh/969G1/rBgvCFn6Rg8D/qp2R4zP2YClr5zRlNgnkhvawd+kx8/yB7C8AGWPr
	sF1ptXB6fhW592sJvG+UlMo+txxJ26CBpmBdYZtV1Nl9SXltofFRCGfG+Vp9bu4/S5Y
	wZeC9uQxhvMlLZUiCTVU2a2nwiXCW8kvET8Zishc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647447385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S5a99U5L9h6Dv5hauIP1AgjcDTDN1sPInlpk40OdWRE=;
	b=efMjNSmnF3SBGeRu5ogaIj2x+UKfQOpsL7gSqGOLGw0Zd8bqGecrVl6I5R7pU/LM
	lmmydr3qacRN7OIaNz7sZp8/JypSLg1TaNmTP48IfvFMYLpKpgp+uiOPKp2nMiduxOh
	Z1JIiuVIdRUzd9ni6CvF+KZYv8Bwxk65QyHpIuxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f938422ec-6d9402a6-4d95-4e74-a797-386bf8fb239f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3def93ad54912d48d74c8625a4ebdff3de9f841d1d82163690bfe76561830d0b
Date: Wed, 16 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647447384
