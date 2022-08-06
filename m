Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B8C187A
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659796852;
	h=To:Subject:From:Message-Id:Date;
	bh=dcWBYlnH1c/oB2L6wgC++K1kTZXk3vyHBN9D/VslRrw=;
	b=iX4aJ88EuY5WxLW6VmjcmLdbVPHsEgey0ad+++Cpj7Jf+l4K/QDtQdnu9vcdxSII
	uqOpGmjfNy7rsMoW5AsGdweu1pTmcfmI9v+7p7OAVzT7UGVfZ1ymgoSiJY3sJgqSiUE
	O/qEZgXSsHDt1qE5i7BZUtbdIgrw4SVzN48Jnqvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659796852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dcWBYlnH1c/oB2L6wgC++K1kTZXk3vyHBN9D/VslRrw=;
	b=STw9XsaUhAqpV4sXdI27ecb4HvGl65lHPGBh4nWPzUcnhpmhJmWG2UvAeqSGHtyO
	9R3S5FVx4ok+uYbJKLrGi+7rqdGOQAVR1Bf8VvQRnBEcmf4vqvGGuO+wt96MBEMqGSZ
	gTxucWLOqCS3It/O1n2sYeNjMArW63of9fV7bSls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182739a0f5c-5e7af9ab-cc8d-4338-bd9f-64a68dda6db9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e8f1f387bea21baaa792f494609b9547ee46d6ba49aa3d958a18fee189b17cf
Date: Sat, 6 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659796852
