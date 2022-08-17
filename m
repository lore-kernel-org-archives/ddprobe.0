Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7920D7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660718452;
	h=To:Subject:From:Message-Id:Date;
	bh=dWw1dPbDgJ7vb7Mvm/lHH/JnO+9db9eekffeHF9fGFs=;
	b=COIEtPmijYnb8xKU+HtdIhjUOMtJPVHpQmPHrGcAvcVSFj63dFkCB5Eu9HLBeo3A
	+colYzl/XVXgEIwSWlL/LGRxc95Zxopk783ch39LXYuoNrpUX1OcvF5Pp13q9QI0SDY
	yBg+b25SgewcpRjjpPKHH3GWX7ohVmgLE2qwIEv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660718452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dWw1dPbDgJ7vb7Mvm/lHH/JnO+9db9eekffeHF9fGFs=;
	b=h6/P71aJ1aPfQDI9lJsSuu926o2WNGSN6ZfshiKYz+bKfPZT2OnBIkMIWdgKuw8J
	sY9LyRSclWEn/gW5Zc3AasJonW6RF6pXUZQ36j5GnVGrS+2dipt53q6CN4kFWlsEQ7S
	8V4sq1i3BM4qdOGpfBdZkNFqbjmA3v/2eMJM20x0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa888fac-38ab6c79-a277-47e4-ab6f-012098af79c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 995cb5a50c79d0bcd8559d13c85f137c523836ca2dbf1e5a3e7b3a59cdc001ae
Date: Wed, 17 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660718452
