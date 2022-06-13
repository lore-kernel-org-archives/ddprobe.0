Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2A01376
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 14:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655130119;
	h=To:Subject:From:Message-Id:Date;
	bh=7XEJnEr8Wr3YaLQ0N90l1mRQ8NfzsFYmGdfjKcapS3Q=;
	b=IsBKzxdmJSgfWs3TiXMmVzjPX6EVOTPFpfWV4s2EG76ERnY7hl2U8rknsPEyvgS4
	FFZuQ579ZFNeaqNGRhOOAOa0FjIo3dVkGRIMRrnvR73zVzv0llIgUdfu3WPM7ZmNLlF
	pMkItJUsKbRPU5uSuyamGCffqUsMQtEnMT+k/1/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655130119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7XEJnEr8Wr3YaLQ0N90l1mRQ8NfzsFYmGdfjKcapS3Q=;
	b=k6/zaXAh1ehRHpkEqZBf1EhSJ7yhjUScJIBPIt+XdoJWL9HBFg6MWgnxI9t/TKZ/
	dQkMUypVVfD33EZ59hwc9cDHbmDnr6w+DTqhY3gIeHVaXcxuE1DPoWGsM5uN8cL7BQT
	56oSMBECTJXVor/lwGgjXip2A/vkP1KVEyLlwhDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d715c98-8dd3ef01-1eee-4242-a8e1-fa6168ea862d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2028a590c9dec76748ffbdb0ddfb09f3752aa0bd9f0f844a688743ec65465486
Date: Mon, 13 Jun 2022 14:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655130119
