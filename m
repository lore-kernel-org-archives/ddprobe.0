Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157C23D70
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 22:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648332238;
	h=To:Subject:From:Message-Id:Date;
	bh=uXkESB20302T8oOLu82/hycUSCC5Kk1Whm/NZIIt790=;
	b=IyoxY8cBsXp+3xaWBmcfw/jMgEoxUky/GO1w367oU3M85VqPtIjb+JyaP6e0Lwxs
	HDxWk9JImWqncpoZhHP1t+fpq8bVMsMgFBJXF0nqLZkeg1JKl901Kclfv34+SsyDeiR
	9wwV6uI6czb4JelIAoZFSCvvfgMvsmV19Eegqggg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648332238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uXkESB20302T8oOLu82/hycUSCC5Kk1Whm/NZIIt790=;
	b=IxBq5QUz9vJKR4UjYg4Zf1Ia0XbF64yc+NY9nHyP6tEmBIyqbU+YXxk2D1Fwy/iy
	saJsI1U2+dO7HYCENFLEL+PhmUn8lv0OpgGuhq4CAcQNVpXPhdq/rg8NFQz3VTx6pyu
	tjJGqFhPOUD5y0+AG73CMjmLKMbQQwKz2XXQBCRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc841eddf-eb8b1dde-98cc-46d9-852f-e6b50eb29b2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0547f084ffc7dfe7b650c83343f5d4d8c1631116bbb939781b00f747ffb49482
Date: Sat, 26 Mar 2022 22:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648332238
