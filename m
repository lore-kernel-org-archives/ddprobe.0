Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332027B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 19:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652125798;
	h=To:Subject:From:Message-Id:Date;
	bh=IJ3c+xwndXeXQGBOI4363PT1eDYfo0wbstrVAngYvF0=;
	b=CFI8P/r+QTKMjSh04fi4BKRaVX3oxX+bUBCKxI1cgULDnXjIFeDv+tMKbfh5LxoP
	c9eY6zoTMLcW/NqasgigNC8A2cir/gqZlX5C2AbgfTEi7qY9yUuOy57bJxp5ie596Kr
	29NMpdGfk45S0M4NKPa+sqqx9okbocy4cH9YH61M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652125798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IJ3c+xwndXeXQGBOI4363PT1eDYfo0wbstrVAngYvF0=;
	b=BWDBxEpMamkEa3Ouq3Ak9gQRzt36IlREqnCD2HR5PBImS4Lhw0glQcHE6sKmXC0N
	SvyEnwIpuoQlJfB4P+PBMWxBaxYrZ2tC2o4a+7zZFAIAG7kqWbRBhtCAKjRDSgfjtt3
	4khq+6oQ+wvyKX+5RVuS0yuRyOiVSamX8IiM8Naw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aa5f0f9e-2c72a15c-6884-46ac-86f7-4f410d69de5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26ba100e81911679c99ce041dd51ed960a0feaf0a5f1b734d4eef038ad06981b
Date: Mon, 9 May 2022 19:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652125798
