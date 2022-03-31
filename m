Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA5D7B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 06:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648708738;
	h=To:Subject:From:Message-Id:Date;
	bh=vEadzWAdjqTrMXTBE8Ldwt47PUaRc5VKadaCpb+hqkk=;
	b=EHjRGm3K0apo/nQzNR5SfVdDeR1IPITd3hWxVyXz1/VuU60q1k1V0xQh8msAYc2y
	laV4J8mW+FV1QMJt3Z8ViK2ek4rW2HvlDzM8yHLMkxZLeoNHfVNTavd4lJbIEn3UFx7
	vc1aQglFicsfYACKf0EkGzrJIhSBMmBm77Jahw4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648708738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vEadzWAdjqTrMXTBE8Ldwt47PUaRc5VKadaCpb+hqkk=;
	b=EPrPSCSQd+PHv2qIRwk5OxMZpB/R+0auSLDgvmG9QVGNgp7uMrQTNJltb5Nj1Vmw
	UtitCa6MNA5f5Z2ePYVPX0RZu5mDX6MA2LErKpagq5BDaqtSQDonYOR/MX2uH/+tqYe
	nebujbcMo8J48ZIsZUr/FRk9CmxlqZgoom/2ePBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdeb2dcec-980dd022-eee9-42be-9f90-408cfc057850-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39c873ca1061c760eb41566b4a8367ad0167a8de4c6426bbd5a7d4646ddaf3cd
Date: Thu, 31 Mar 2022 06:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648708738
