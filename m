Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C937463
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660770052;
	h=To:Subject:From:Message-Id:Date;
	bh=lzoueIgD6ob0vgEY9ZV1TRAMSuVXCylk5FauYHQ8Mmo=;
	b=XpdxwCGd2au1TGIjSxiGIElK13JNIQzfjy/wfXgikgvF4FEGqU26I1MRcekwzcG0
	pkKvOVuoAZmAp6FQmT/65dZPgg3mIa55YkEoKHaJzeFxBOSSBMWmb75q+HaRYGmFIzd
	gGqycdQLJOZXeacjsJr+bzRUCw2MeaW9mnqmLCb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660770052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lzoueIgD6ob0vgEY9ZV1TRAMSuVXCylk5FauYHQ8Mmo=;
	b=FXiCah2fyY/y3XpEQU1g/sBsIAcFLLt/2ZMfaHg2Ocv0Id3OtHkZQnb9EL+ESHDJ
	0xcQsczIyKeIuQqGgfaYayc+vdm9HeBKrMDv/vFAE6S3P36mO+xO3TZ1aK7FvtnyPdt
	U0nSv92FYlTw2YL56aA5hEDDhj5oeIv2s/WLM2Bs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad9bea3a-7091c0d7-b2e4-4930-bb7a-854bd54aca5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a052c1558d8f6164ff44d2636ebc6b1acd05b9761ed8a23a5881e66b82163834
Date: Wed, 17 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660770052
