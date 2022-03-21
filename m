Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03D24289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647871885;
	h=To:Subject:From:Message-Id:Date;
	bh=cT1WzD4P7HlcTy9316KoHsWricMghI1pra2r+LSt760=;
	b=SIHyUfGpckMY6YEzuRrWPJR/F/ZlG2BOUg5HBkFP9A/b2kFtd2ZKGt9kmxzysTl9
	YxUrQJN0O/AIO9adERc1LlQtYEC+CF1HfmYcJquAeKN47r2xDRsw+hgtMUgqIKEDTUi
	cGbiYOV+k1dSXhPkd969ymrVDFM5Uo5jqsCLTJFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647871885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cT1WzD4P7HlcTy9316KoHsWricMghI1pra2r+LSt760=;
	b=ZfMhFNwO5fcIPZqLA8r8BfJ3IYKnOUQ+Yktr/zfeTgV6TaZXebvemf+pGoNi29tJ
	6w5sRrPGQzXR/kblRfZXCkL9JfaxHjYSpKFTo++TZ43CpVRe0u2iqQp7k0WIolYhP3h
	5t8tTxJ804qsJd3BKUtTmljgbVH2lh8Xa5glAg/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017facd17db5-7cf02e28-ecb7-4a66-b870-393434bd7f72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da9ae3e79438e5e5a1bc9619f4e093793dffe9274f50f23f8532eef1b2efdc18
Date: Mon, 21 Mar 2022 14:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647871884
