Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C1D97C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 11:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655207939;
	h=To:Subject:From:Message-Id:Date;
	bh=QgxM/xXMCiW948ULShIdtlUkChb0/Jd6GaY0e5D4SHA=;
	b=dqTpwovDhHQx+/HFJdHMtVO4yotQKIgM1JC/P0iA8OoXzmVHsz7/Sf4K9Ych3a1q
	MSQzM/gaKKrLD3OmaRDn7qRz9lY3aL3eOqMAvLDDJGQIpEhS3hBIvuMVB2iTFreb3AL
	TXXNESv4GHYtKNSuDWsHl+YUXBF6i9wwxH8iS1zI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655207939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QgxM/xXMCiW948ULShIdtlUkChb0/Jd6GaY0e5D4SHA=;
	b=hKRwMbuaH9wRyXUsDJ/m14Cp/xUbK7K6Paj/pAHvwD+/tDgUulMM4ue1X+4rBJrx
	HnhUqAzaQcxbSkevXAE9NXw6fvKVOSES+2C8n/dddvzAqdbPLCAOAWa9Y3wnBruqtOv
	440/p2xahMKLsW7fjcDjgrSEnHx/lIC9HLzXfCGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816214ccc5-26fc6909-76c0-40ae-b14b-8882a7e93b7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cd13c4c9fd36cb56416c93141ef0d786fa196e1157cdd970a437e88dccf8fef
Date: Tue, 14 Jun 2022 11:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655207939
