Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1D93229
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657301812;
	h=To:Subject:From:Message-Id:Date;
	bh=pfOCBhZyg/p9bGqLHWBlINDG6YwEu/oLzbmdjJ1L648=;
	b=g5vRmoSvNjx/xZQ5NWgQKWDl4o+SbDlvOtQBanwz1COThx9hDghI9b2avuSIEFhT
	cUhuams5PM5SA6l26ecfyygEwUkh8JZFAm3L5Y5b1M7D6ZWTRmyYn4/WkxE5Eq1pHpB
	j9E2LGIYFO2C8GZjh3gaSET4RXqtP4SdVlrDrSxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657301812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pfOCBhZyg/p9bGqLHWBlINDG6YwEu/oLzbmdjJ1L648=;
	b=a9nJxrWOxMlWrOiQ2x14FaCrHLFe75mHuhvhX4FcM3xPP9tmPDrCdngcH0yLDkWc
	z5cqgpLkO6zgcva7IeJsA5NQsTmcVgscKzhjQxj2Ma8NDrv5DG/eCUklsdyLThs5SZ9
	M+qnARcAeHe6HQcPuJxesD2cnSjzp77nWgC/mKCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dee2c421-aebe8e94-fccd-4cc3-a845-3841495753d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 338217968830e50dafcceb0c1dcc3222cb23daa6e12128a8f3046ac012bf2a6f
Date: Fri, 8 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657301812
