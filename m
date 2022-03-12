Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B26E4296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647093384;
	h=To:Subject:From:Message-Id:Date;
	bh=EGEoihGKtMsS674HQvQ8OISB0hJJ4BpkkFoHEt2Tkas=;
	b=WcSevhd7iN7lSaSaxpVFgywzBNVoUVF+RyW6jV3bEg6ZjprR2O1kqoULOTNvrNk5
	utmNiC7F87MiBUXUlLQvh+D7AyE0zZuxjjNvM8Se0IiAS4b98rosi+I0UaABIGrcRkg
	jNS0iZlnanyEB33IKhgkV/gLcfotwpmm2B5/QS+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647093384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EGEoihGKtMsS674HQvQ8OISB0hJJ4BpkkFoHEt2Tkas=;
	b=BWkG+EJ0yVcxGWRtoN9x8l1laujLGUOb7eHacfECKCPyNNb85U0CR8mGMJLfwnI2
	tTojN9arWSKC0o19fvDzTfxcbvcRbb36ofiUh2Y9N2UniB0WRrJ7Spk8Ng51P6w3Jx/
	Imj+CnJ/Lg1eZn00VNfc3o7l3ULI7owWbqMmLpaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e6a862a-7a72ca67-c02a-40ce-bfea-4d838d718073-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e50f59e1de151a1a6aeb63632bd3b8bd0047ec7eb99f878535baaab198ff919
Date: Sat, 12 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647093384
