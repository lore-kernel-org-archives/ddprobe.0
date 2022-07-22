Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DAE6AD4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658516212;
	h=To:Subject:From:Message-Id:Date;
	bh=rrCzu7Nb4TfgHlkIJgYEAmrBvbIZBFFMGanUV6sUaBs=;
	b=bycdgp553HaunSjEyRL+c4ROTfsr3aKiVzgHDEpZIc3f3XJHqHMDQjfMtvHDHmW8
	Er4Z/lR5VGx9kPeqpZL65tWHO2eP8cysHARwnzkcFVW53hLhQyPFf7y1YSt1gHdam7O
	XHLVsuCf7jkblKDCRnjdZzSHid0FGcKCfI4Y3gwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658516212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rrCzu7Nb4TfgHlkIJgYEAmrBvbIZBFFMGanUV6sUaBs=;
	b=iTMh4kkNly34u1vvjuE0uATeayQwC0WwK0QRsgwUz4U/6soXb0XcsrC1JcPAwFcq
	CaP8IkLzmmdAo1LlsDO5DBjzNlcXXAJ/3hIX2+tR1L8q2FUvgE3Zl1ipNjGMS46fau9
	xjR10O0DtW7jzXPmr+0B6mzvMc87s2wOEAhvr1sE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018227450a85-6b583b1f-1cfe-4fff-9c18-3753c6b83059-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 444ed0e2e09bef47ac375b0ce60ce98194febb4334fa306fb4c047d0bbad2c01
Date: Fri, 22 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658516212
