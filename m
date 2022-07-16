Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151D16663
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657996012;
	h=To:Subject:From:Message-Id:Date;
	bh=oEYL2Sc5ZGsQYKmgwBgM7u1jdK65c+jyTo9MP7kG2QQ=;
	b=gMLY0mTWtTFQdowvK7CItIXB9EP8YsmIXMeUSRMznQIlqu75NF/E7xC9ZGYuW8kL
	zSCSRzKtGkBaidVuBILEfh4rvHxcQsq50fwkidd8dhLHgknUXasQUgLV+3GqFF+zhgY
	gcs+uwtTRQKJWv4S37KvVinPz7CCPljJTo7s8Wzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657996012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oEYL2Sc5ZGsQYKmgwBgM7u1jdK65c+jyTo9MP7kG2QQ=;
	b=V/9hbihljxJ9bxq6JMLiDFra2Cjs5VGjhlHRONydq9jlD/EcBeS4g+XbhAHqQRjD
	Ic4s+7oICLQaBJXyLvQEO1/RTxw2JIw/iEpwdIBbjzEJ/5I8XymC4+IBWBz2oP4bzFQ
	j40w5Kgjr1OBMZAtBNm/Q6VcfYr4ImDqX5lIQbLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208436b15-4a104e03-f224-49a7-b797-a9ad32ab848b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7afdd72a6a3c314a6d70d4ae083b9d521e20b7f29d712fde1615b4acbae255c3
Date: Sat, 16 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657996012
