Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8D77E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 08:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655713319;
	h=To:Subject:From:Message-Id:Date;
	bh=P+B04FN/uKdaypOD2cl9zwNTQZroBj5rA04BR1wwyTs=;
	b=ZeiZBXd/JIjwtK8mOM3siUHveVzh9A+I10F7AvxIdGJn+Zgp2y/+b3AWuvKo50kd
	8glcdPsrJc2PhPBPReWL72bsyJxCExl0UcNpQeH8hhQNN65bFL9WJKYTthMqf5C5E6Q
	M+s/lbw8z057inc2/N1ZkLPx7+uDkmxSJTrXGpFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655713319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P+B04FN/uKdaypOD2cl9zwNTQZroBj5rA04BR1wwyTs=;
	b=O1nIv2/tV2f6DxikCUlwIg40eEiAUqK/tpPOP5t08sFG034tmie2vHPZQKifi63X
	NfqWt9HWuso90elNMANIUJwvED5I7sl7iCiiFfuA523n3V7rucdOarIMDQsBf7JsIhU
	CioNS3+e2NAsBsPHKaAAD1BgRwxTVzHS/zNjNPBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181803449a5-ea2d8842-6e4a-405b-944f-1918b431359e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23693ce5836301055d91bb6086528523e4159d3eb2c45fd111b52af56f60c3b5
Date: Mon, 20 Jun 2022 08:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655713319
