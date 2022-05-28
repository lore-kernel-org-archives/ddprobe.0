Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA32A7B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 17:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653758579;
	h=To:Subject:From:Message-Id:Date;
	bh=Z5ICJNS3TY2QI/4gPrYnG2reXb+9bLd3px7A77t9z68=;
	b=NfoF1PnU8/gHVZVe0ATwD6MU29cqYlrZHJ67irlT5ihM4uBKabLJzNjScOKAvQZO
	rjmUxlgFw1N73y/cdykm6gxeCd6RmpyvgaxOyfbdHPM+DCZzVh9YxSBxL0BSzV1TJMw
	uhpPxURx4dTdP912S1cu/rl/9Z6IqcdUq0/Y0zMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653758579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z5ICJNS3TY2QI/4gPrYnG2reXb+9bLd3px7A77t9z68=;
	b=H+EPGcXP1ZJqv8G+gZAV9t02IHAjJ47Azcypp1xVv8iiTIRwQ0k1k/k8ZKQMJ4I5
	ZyeRxdn5nP58ElkoxWEPLtj+/IDjvLIAx+1Dvp/nrFeMO19aTKLDBomfjTniYvkEqE6
	ZTdYuJbxVubK1i1N6vZy+5jIpmdmEJ6tQyGlMA6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810bb15238-6f86d811-d95b-457b-952d-0e5854396c4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaaf5d793e4739e481c65840a20d2f4044f50583b806996d9a963a1f03d06bb2
Date: Sat, 28 May 2022 17:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653758579
