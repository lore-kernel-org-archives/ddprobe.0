Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE875817
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656734212;
	h=To:Subject:From:Message-Id:Date;
	bh=8zdyiUQUiR2Z9CEGBhUjM6SxggFTekgvo6yXDHNUh7I=;
	b=FPTvdqhavG8fhxpGlRBqXgItcUSihvYrK2rCuOdxzhaJmNuiXpn5NiS72n2yLq4N
	yl7klsisUdLJGDCAsZ4Vqy2BaNK5RgNcKR+ZkMvWki/RY/1cJVu1eMZtFonkWtl/g/G
	Rfzff6Nu2JgB9Bj697QDum1oZtr1QVVvbCA68qsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656734212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8zdyiUQUiR2Z9CEGBhUjM6SxggFTekgvo6yXDHNUh7I=;
	b=dn1FjKOrHAonx8xwyycpfs39NVSDPOJ6Vex3mFZg5gmLn8WvPkXD7qHi3dEW4cBU
	G0zBw7ckxcPnV79y7DioXuWhZyCP4onk4H8qhGNSIexvWKmcCMnu+5247oZSfaQkLsC
	ilR1vBsbqVxb5XRVzrYjTPPy1ths7BwqaXJ54/lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd0de0e1-e7f011dc-b8ed-4147-bd16-d0578fdfc25b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a306493b5281871fad54a9583e29548f3e4a8e37b3448e1bda4c7681193027ab
Date: Sat, 2 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656734212
