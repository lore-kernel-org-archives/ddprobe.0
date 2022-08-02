Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593067F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659465652;
	h=To:Subject:From:Message-Id:Date;
	bh=s635HcCzxcXIOe4SckFsRI+h1GoEOatgNsT80FYZaPs=;
	b=Q8NO6J5zSHq9+yGH2IsQLJ/KcT7pGGOJeJPSLIcibx/8CkUrf2W3w4pHOABrQ1GE
	PXpdYRdSX8Jj4Ey7H84I+ZpVfTZKm+B9VI1KENjdfC0ckUWGUuisQCbmxvsTFWI1UXW
	dJa8yf6Fcovugfs2IHFJ5rA7/mJn224BmXSuPP2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659465652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s635HcCzxcXIOe4SckFsRI+h1GoEOatgNsT80FYZaPs=;
	b=T4DuU/sbE4pRup8A/KWhrYYQLpohOlERkCxTtIzec8ZMvJMWbSRYkHyoyt0N5p9l
	3w4+1oV/zlN/SbpFPA3MPkM6z7V8yceoGPc51I5YMwudxBp3dgTEWWe2S+xata4Ynvh
	ITpaOp9FzsHOh/4KzUx2v1Rc4HcW70xEWrEhQ2Uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825fdc5947-dedf3f75-1c19-4748-bd81-ba2f2204780b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 452505a97d65ff9887ad94ff0f97cd9dfc46a7d9c1d21fd1266b84e311f57dc9
Date: Tue, 2 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659465652
