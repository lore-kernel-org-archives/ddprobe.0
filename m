Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2215346A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656101812;
	h=To:Subject:From:Message-Id:Date;
	bh=melZpA5pEn3oiR9UvKQNVuPGhBFXGFDwNnjc2o1aApg=;
	b=cUm2DIdZ+4GVB1w0F7d1USdYI3AlQY+uQpXhIaPCA1zuiBz6c8XD4Ydy5OSNLVkT
	zcCS82qBMLuATMvK1BPl1uElZMJEC3+xSa31XiSnYHw+Kf1ODn3j3Tz9lmNaIFhs4bL
	Z3CDbSxdxYGkv25XGWAWpHeay+JTMt+uY+EZxhOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656101812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=melZpA5pEn3oiR9UvKQNVuPGhBFXGFDwNnjc2o1aApg=;
	b=cV6UXPwIi4kJfOuX8IRLR1K2ZbjT7/bew91yCaWEZ1o6FXIMLp/ngyphCHklIV4/
	hKmkU03EN9Bkv8yc5NjJnVBrKMSC8A3oXtnqOrHmXCOMf7gwf52mysis7hyS68fTjme
	4GR/Ao7KX+jsLNSRTI7acUHFCOe3nF38stSZX6lY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181975c3864-9f1d591a-9331-4c99-9b34-d4d28c5ab014-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4145ebc1f5a6d0e09bd69652e939009b2a16658b320213d51e9e830b1f2193d7
Date: Fri, 24 Jun 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656101812
