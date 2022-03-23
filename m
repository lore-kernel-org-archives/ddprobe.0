Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B8E184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648035084;
	h=To:Subject:From:Message-Id:Date;
	bh=qvl0UWq+fuyB0GSS3V4dBGm1Mal0Zz/QUU4nNWRj5EY=;
	b=domUF1fSnFhLVIlWWp9IslSgl1ncSgQ3nAuEIJ/76KVu/qng31qIrDbBSdM/T79t
	MHrP4TIHjUS87ru4kWsHRgQgPTHRovFnwui2/hAGTKZ5on35udTYlrRFz32uo4ZkW7L
	QiDAfOEceAqKif/a9Q8Vzvx3iuDdcu/zNHrOwQYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648035084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qvl0UWq+fuyB0GSS3V4dBGm1Mal0Zz/QUU4nNWRj5EY=;
	b=CehW3v4yVaphNT4J+5YyXH1aPpHpq1P3aXGOP6s/BCPRBwMdfDt0OT2Uy9QtR3Yr
	3qvG+EqUxay7zJJHVBg36iv0CQ5L3TQaAyuRH1X5wUgAU7U8K6XqAoIUU19yLdIkSsC
	ZjB74sIoBM+lbdWh2GgNq3nKPmDvTxi+CfCAVHvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb68bb9af-57c95f9f-5656-476c-89f1-0e6bd10677e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9a67e18ca9d07d228451672e6358c3e035b87a8c547c2b4abd0158051300b44
Date: Wed, 23 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648035084
