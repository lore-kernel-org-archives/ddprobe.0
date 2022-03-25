Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5E446A9
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 08:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648196518;
	h=To:Subject:From:Message-Id:Date;
	bh=qTSOh52aBTQ50yXtc4u989kJLN9pdo2v43pzlfqg4kE=;
	b=ONrsPL4alEpUDO9q/UouD91Hnc2CvAv9LdpWkKRzjB1+UkYo1TdcDdxw8DZipAo8
	E6TIb2f160MpFS1+QepU9le27a0iMFLkaJPWUs9ICq5MQpAP0a7Zc9PvwwQ3jTQ79L7
	ehR7OdKaD1dLtVVa6d1n0VmHHbudOdrjejkRNsBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648196518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qTSOh52aBTQ50yXtc4u989kJLN9pdo2v43pzlfqg4kE=;
	b=K4QUChTkm1s4PDoGNCJXLEupqoHzqAsJSbVauEK8UNHjWIYfr3ECl9MSfFcHgB2V
	Qzdba8npD8J5TT2+eaiRtT2rW5xxl1KyNd1eIfXgHJDuV6NXZVkxqQutc9aLhuJwOmd
	4Cgz3BqRd2TRpuSC37BjVDmg+3T3KVUHBS/m/jmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc02b01b3-85882e9b-8c72-4bc7-908e-576105019152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 599320f54b00d125ee9ab10c222574606a5c53c001d4467c3f51a8767012a1df
Date: Fri, 25 Mar 2022 08:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648196518
