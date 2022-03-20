Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71AE258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647805585;
	h=To:Subject:From:Message-Id:Date;
	bh=AIbZbPub3BOP0dSeBiu9A5CoVVkoiRhbouPBMZg1HL0=;
	b=LKudv/Ynm9IOPd4avqk7fveIQUcg6sEhJ7NYzt/s35Nyu8BgVYAB6Wp3RQOXOMcO
	m8EcZu/iJNdDbCrXyA7NY16uf6acqDVmTTOrmv951H3Dex+QS6UTYfelxYdmTz8OXFI
	BJ0sfPn4YZ5zQkGHl0fYCFCFm6FDfng2T6PqVcE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647805585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AIbZbPub3BOP0dSeBiu9A5CoVVkoiRhbouPBMZg1HL0=;
	b=FrB98b8pVCgqqen2eTkces6o3vmE/2SdpPkcBSUn/h9UBws3eKmMFhlsHDQHOUAH
	hrmbDWd0qD02iU1WV+S3rPH+xbakBOw3F6usKxjP6vK8Pg7u7zVCf8U0UiiTiXVFKJk
	2r9f9jSo5FRNzHhqn1W/q+KkFkxcO6B5OmmnxQJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8ddd5b3-9952c9a0-768b-4d87-be63-f62d2f6883d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d405d1a135a19ea74bb1cf1e586b19ae1de9b97ff7cb3e8464ca819dfea01205
Date: Sun, 20 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647805584
