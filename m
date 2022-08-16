Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1BA6D19
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660693253;
	h=To:Subject:From:Message-Id:Date;
	bh=jTE9ROYXmEKTmkBOrHdgiB7mHM3YLrRn8o1UYCsOE6s=;
	b=F9VT8CN2WtgQ1U/Wa2PqLrdfChwNuCTk83UvOHC3+GeaWjxUZzktROgniss95Irg
	JjlgBpSX+LZo82AnMGy8ZrdAhvD5L0+AR06WxOu+sO3acy8ytqcNwbwX+sruicFEi4Y
	KLiVuL9xdDrgDxu8aIIrc42nytAWZ99tB9elrR1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660693253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jTE9ROYXmEKTmkBOrHdgiB7mHM3YLrRn8o1UYCsOE6s=;
	b=OHBjLYjaWgFqp4PVG9uvmiDiPU5eXrOJy+86FILhsWBCvKa0WZtSCF3dCnG/4GDr
	dXjr1v479N7I5ullsFTTav+AlvZjIqLVeanFPUH1kjbp6zOAd3EK+o8+jrOcglq6Nvf
	l6B2Qkccvxx9FqzKF4AvuLUxYzPbJFBzbF1ogVwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a90809eb-4d463c7b-3eeb-4a1f-a733-d7870a13ea44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22f4fe77cc96bd8d88a04ba1e6a9d880a2af23b9a9ef83401ddd2d71ed81bda9
Date: Tue, 16 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660693252
