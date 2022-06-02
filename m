Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193607E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 08:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654158359;
	h=To:Subject:From:Message-Id:Date;
	bh=crIpBJKQlv2xrBPjZBPpmzlZ8EQdcjOsgxF0Iz0LwxM=;
	b=QnV0vMY4no1i9XNxmbXS6oQrHSdn3WzYEOst45lbWUATHTzruq8OZJgsF/L4tVXb
	D78+HCa1F9I8kdQq+Hy1KiAhxEajMHx7ksg/y9CqfVV67v3mZCTWdmnrHqe7zOl2GwS
	okX1jz0LxXlJopiA8JyoLykyyhVOeZc9XToeybkA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654158359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=crIpBJKQlv2xrBPjZBPpmzlZ8EQdcjOsgxF0Iz0LwxM=;
	b=E0ypPWAdlv/J7vARNEbFpnk9JKmOVHqYncy2rFUKqYW19UBeVEGHTHZ4v31EZbS4
	IRyS6akrRua2SJypaFYFKyZ/1+m+lLGFVF2ES8sDeQ9E6rFp7PGixOvzAG1QiFANh0b
	xai+gRUD3xZWRDujMxxSZetkA3pMNa4dipUKQF1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123857ac8-607f75da-6dad-442f-af7f-00e4acfeabb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8338846424076f6ba57bcc4f1933b0621496994abe89981e1dfcf9ee5c2655ce
Date: Thu, 2 Jun 2022 08:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654158359
