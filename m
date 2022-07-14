Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4C34A19
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657808212;
	h=To:Subject:From:Message-Id:Date;
	bh=BFJvfJlAV4ovjnrFhB2SeKgUNBFGM+XLmZYggysNWxc=;
	b=hOF6D+mZYghSW/fpkmPatdEZsvTtKqQbKD09iV/Hst3xAWrNF2nv0VPiT1Qt5R+k
	y6hPQwoFXSGxzjEeAyeJu9oSLMha5pPFQVj3vFoVMTNQl34KmOZh/QDSJW7XAWB+dGb
	0DsPFpI44J8iIrZ9QHqxxwc93QKX1+zXfz2IVCSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657808212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BFJvfJlAV4ovjnrFhB2SeKgUNBFGM+XLmZYggysNWxc=;
	b=Xz6+1LaJjr4rI33wxwrclN1ls0E0ldjU7SHVLzIDPXkeUHXne2h9b0tUgf6Ozdy7
	+ERS1/AYl9nmCIkfS3KNvj5Rsd6lRIlbX8+vHbdHJTOHtJ61PGQSJRwaVbJm8Ol1M5B
	INv8uzg3Uk7MtxD7SBL+rHXGHAHm0DHS+RMc50ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd11d158-27798790-fa01-4825-9039-203536543642-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 842d8858a99730083da676b4edbb296567e51a1f58aa2f339a053e73caf4072e
Date: Thu, 14 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657808212
