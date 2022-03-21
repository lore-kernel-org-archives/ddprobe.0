Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46472C9E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647852985;
	h=To:Subject:From:Message-Id:Date;
	bh=nNg4KEMDg26ubW4UrvfbMUh9o1HYxOfhwEEx8gNa7BY=;
	b=Ja46G51Un8SaG+HRIcqdxp+2lZbhMP+hf/dX8wxUSRFpfwyvSaN+WSNg38vbeQKD
	hlJ636YY+vbAoGfEzCZozmgKkz5ZdBU+fowh6o5hLCFLjniOIFTrTK7lpeK40sa7QxH
	LXNPDAINtiWmiSoKHscuPnobv0k6Ax51iG05VNsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647852985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nNg4KEMDg26ubW4UrvfbMUh9o1HYxOfhwEEx8gNa7BY=;
	b=W7fdx3atmbXCUtqOVefom3NOGdRv4RzmX3SVrfkFe+80RH4EqjZjwlPUaIP2IDJm
	JQFN8gJnVajVuRyp8zeauyP8Sg756R5edWgo1Mmp/oPgYtYfH8CeU2gv62KTFdx5OFn
	6zPiYxNKKD4LjxHpx/cEqrtL1dip75tZJTzG+sEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabb119d4-c6c1172d-6b59-4f83-b252-7a4d507021ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51bfdb1e919d93851b66ec1f67699c8576fa44f2015b23f9e7d0a050739e84f8
Date: Mon, 21 Mar 2022 08:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647852984
