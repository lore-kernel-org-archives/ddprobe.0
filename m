Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A613F614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647120684;
	h=To:Subject:From:Message-Id:Date;
	bh=1jfdhQ0Ju5Y69/drj7JTXPmhjmNZ6/PfeBjU/UrZ1K0=;
	b=XUJWLOT5HIdg6GuFf2RiVsDzpDMQIKGqwpB4EJwNHDy2/Vx+86QKOqQiKYHOtReE
	Qg6lGq3kzqiCsB8CS77qjzBD5FqhbsWyn3EJuIjqo5w5nBWfKsEQBA8fKeS9PwCFsqP
	nYr59TsLjSYWo2fQzzp5dmDW6jKNxOFlftL005P0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647120684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1jfdhQ0Ju5Y69/drj7JTXPmhjmNZ6/PfeBjU/UrZ1K0=;
	b=LxFc7AogqE2d2GwNYCqVkNSPxT+UhJiLC6tn+vvfjXz7B9qZQSe2PLShSEZRuJpW
	Hxx5ICZrjgAH69fSkgqFC1sdK1SvRT6NgN4WKsLpk6dEMyeQ71aqkKyNQ2vqRYzPauu
	4UW/LvGlthbmUv3cdr1+ECBXty9WhLO/uMU11xhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f800b16d7-2b4a92e6-4e79-4d0b-accf-ea933bf7c9f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e2e1573b3730de156a948c8597e46c1fbbecb1b3c532369803fcf9ef5ac6b51
Date: Sat, 12 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647120684
