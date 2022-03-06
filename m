Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3EA7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646548285;
	h=To:Subject:From:Message-Id:Date;
	bh=C7HEXcMTNlByXXss49sXAWdcmq5qQi5vShMCiGgaPd8=;
	b=QHKLglzBIG+AujXqKrsD9mSQRiYdQOoYytwiGnE5uEC4bvwiJRRpW1MQdmUMb75Q
	MWUWOmuA95c+/K7m3WA34InzkOYqbFuBCR9cr2rCgnJ+4Lr5R6cxroIgEyj6D6bVPNy
	hY2bwqz+g8CCZUB/xYsC2AWAAGPrLsXXU+jLSY+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646548285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C7HEXcMTNlByXXss49sXAWdcmq5qQi5vShMCiGgaPd8=;
	b=Vc7DsUZOH+8XAWnDTz7o8PsvPHNqXj7e7hQ4oVaxD+n/c7U3rlsMcF0RAZ87h6e/
	OGehogU5oJ3rWFXoIx2ybuJsxiBQVljHWWOkcDxOb9top5RzzQQGEwCysXVAvN4rU2I
	ariqyw6nKPYNIGIMQb7xRF+7XR+DS8QeB8GcHGsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5decf574-9732e672-9158-4b62-a2e0-9fefefb5ad75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a27af4299f9ad916ccdc646435b1ac3cc9082360f136197e8eb568351ecbdb81
Date: Sun, 6 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646548284
