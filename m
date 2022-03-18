Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955F415A8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647606984;
	h=To:Subject:From:Message-Id:Date;
	bh=FvHCHGgMKyG/k4YPGOCdjuEyxG5IEfiqteQAFx8WBas=;
	b=fY2+k3rC2VnVbdNQF+FcFcBaTfVsfo/SMsiD3fJn+3sv0MPdF0J8glC2qXFWEVgr
	TkSkmghi9/wc9OCYEIMwhu2kqbeVz2m9kubPn1qIJeAtpJG51NuyKrGF8wUtRaygnLz
	fFBB+FtkNZafk4nAPo0AEvh850xEPb824Hg6FGqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647606984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FvHCHGgMKyG/k4YPGOCdjuEyxG5IEfiqteQAFx8WBas=;
	b=ZQLNr8hdeL50TxCJFCKsRQ0ugxm+efktfNV6FKgQ/i/YdVIxkINNCaCGmt90pTjl
	E8vi2V+nXfvYpJVvtfIavUrIVbxpttcFJtRv73f1aXzjAXw6hU8OtgAK1uIoINoLolU
	SnIDk1XUIfv5fy/j/UB7dMTKqM+t/+F3IRsepUFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d07703d-72783852-805a-4180-ab79-556dad8cdd48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5149477c6b4f9355184d17c942e9e2c7c42f964662da5711ab3e140e7f9d5af5
Date: Fri, 18 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647606984
