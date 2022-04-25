Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF207C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 00:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650846718;
	h=To:Subject:From:Message-Id:Date;
	bh=6qcZADKHenMnaWTvRciKo4/ohaLLPTQfVVGcII5EKj4=;
	b=DZxhhWqv8ODUR3dVQDST4ewgrr7FMp66iqpCRVZir6zWwbFjNpW3UMjCuKVYaA71
	4NoAb7TS8rA6vR8UIJex0lXhsr13X+Ote6vFI3f0+zRe0FwV1q+ML/eKVNlerJP9jKO
	mextErKcvrwQF2zRr34/Fj37G6OG82PKiLZvSbm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650846718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6qcZADKHenMnaWTvRciKo4/ohaLLPTQfVVGcII5EKj4=;
	b=hljw2x8A6dVfS3O5IP7VTym4gJxkS4acy5tc+asaz5AF4zq9BKJTIOAmDtvo9A3A
	E5H1uHV01DX2MsAtHqWWwuEGiDERnQR8uzmGetTWMwNH4RPKJQSXrlYghJo8PaWw62P
	h6Du14Hzz7X6nowwXLBXCLmjCv8c2h0G7N1/wEgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805e21d986-5e9027be-5835-422c-90ec-8c5bebba8fcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f72d17e7e39e63d6c482b357ee294f10cb65aa3e86033dd8ff5b7130f16e9f8c
Date: Mon, 25 Apr 2022 00:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650846718
