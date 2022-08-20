Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E31612B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660972852;
	h=To:Subject:From:Message-Id:Date;
	bh=UGrs9uvkOSxg0kUZjxiF9QV2LS5jSHyYroiqoMPbx2g=;
	b=eeh6n88eXGV+J2XqwFKZ/A5xqsaT+8cNUZanBqMx0RNvITbztODgacxNjZ62kV3n
	ImObruOzrjWzMfYmuZcLLdrqDCq9nA2ylBNniXKAzqE3CfuKkB326Z7E93nOkYXHVV3
	meC59LoyHY9cOtgB4NKqZPiHsN4eREue70dMOLnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660972852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UGrs9uvkOSxg0kUZjxiF9QV2LS5jSHyYroiqoMPbx2g=;
	b=JFvESrcW9cWt1uYf49slRiWVtMY3pyRNM9ed0Uoocfb29pRwTMwmwqPbgwlnI7k0
	PfaiUBOxDSchaK9uCbwnak2rY9EENRJyn9LXpv2L9C4yc2s7CfrdetKC8z2bnrMMYOH
	6x/96xaFSbOZY5B/LPy+NuNcdNRZG/wR0UxrfXfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9b2653e-98816d50-8a14-4c25-951b-9ae90878c9d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 433eace80cb687e89f9deb9dc0ad60daa48578007783e43e1840bb9d8dbafc2f
Date: Sat, 20 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660972852
