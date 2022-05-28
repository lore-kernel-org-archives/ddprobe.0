Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CA61851
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 05:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653716219;
	h=To:Subject:From:Message-Id:Date;
	bh=ItaTTKzbil1GeP3vIofm0qtgsax2Vh395STuqObN/oA=;
	b=D7BWL4xRsSYWpgjcM0dM5A2gDH0LpHVQIF4l6mVEyKPy4xVP5Qo7lap+hLCwPmEF
	RNgM50z0vwqpaw0cu395WZ9ajyLbXSE1NsaF+z54pWDCGM4HHZqQJ0Mm+PKXNMONcdl
	ugiM0T0j/ejLBK+VpFegXCNjNjRQfWlNGAFkxwCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653716219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ItaTTKzbil1GeP3vIofm0qtgsax2Vh395STuqObN/oA=;
	b=fsBgf7SFLnQn3DnkD+uLV5485yM4lktZjGttozfDGx2FgUA2fch9n+JXJXYQPpeR
	XoJwHWrfTMx+LD+TeRAOCJjgFWbnFeOAxKibKGCFlEae26oEReUMzlInV1JkObw9Fqs
	T7cFNgqKKX7IBKHF7pa4dmRy6cpe08lWxp/Zpazo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181092af567-c649ad3e-71bb-4dd4-8a41-6ca7adc1a2d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a6b833c9a12e678e59182f1c1735a9c072e981e65caadbbe41efaa8e41d3a07
Date: Sat, 28 May 2022 05:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653716219
