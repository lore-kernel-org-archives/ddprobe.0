Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2E323BB
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659166252;
	h=To:Subject:From:Message-Id:Date;
	bh=lc7xkvYEzoYBGaHfCsCad0UmvYxGVxRwn9vHX80zFy0=;
	b=elWUycpGXthCDyfkMyEcF0zkz0ukjTD6oMirVEQ506YUthxiUzfyCBs25wlO1KuN
	7AngiEvUdWg3J+5fBOHP3HE8jUZM11qPiAW37jSonElGJ/Du4MtA3NSe1ZGzia6px4Q
	yPQkU6OYPpQvOtRiBfXMWS2u3vXmxcUv39CocKwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659166252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lc7xkvYEzoYBGaHfCsCad0UmvYxGVxRwn9vHX80zFy0=;
	b=aD1oDuhOkzpr/PrrrxTgvfiiGttdq2yYkiRPzijw7TmGVWpHWaEogfLNHjkrtAdl
	zGf1ADGrEqD3iZwAlnnnrSdSCBQT52xewOIpEkwwQBlatg1mC7DttHfQMPWrtXYCosn
	xvrvdtbAsIzdc/rJQ2fwkpmKKFeBNf/tTwJb87CE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e03de09-54817802-136a-4f6c-8e77-2680f8c88171-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e35fe6842e6c65a6a13109f243da9bf0f123542463127559dcd8aa0260a1ad6
Date: Sat, 30 Jul 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659166252
