Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4731B4C7D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 18:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655403179;
	h=To:Subject:From:Message-Id:Date;
	bh=IFtNAoLTW8yD7EswXO2zLbPZKA5eqIe3WyLpIlIxIpE=;
	b=OK5vL9ZEKbUQAQIeXWtNEmh2eeHDtnCONiDVvM+rka7QZckZcRLUVQRitDD/6d1c
	SvPlYERA9NF0v3wH/YoyQpv4fDqas4jJKrLJSXFCpLKlFVzaiyYrhmgBiIObIP5kyty
	D3WhCmZaF9g0XGNO0e74mYX0u2+G3jGGnlrtJ8m8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655403179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFtNAoLTW8yD7EswXO2zLbPZKA5eqIe3WyLpIlIxIpE=;
	b=V44I2KwkgIo+v5kiRWgaKN4taLS/TGpSP1ow3ywRJHxlRHerux/ulVDiPLyYVBBZ
	EuGD9T4ajugxn95ILb3t0j8GaMQC87kZ63YKCfXyi0ifZ2AnMVYu5cCaLehy7V4L+EG
	Yloq4BO2vhRW1o7f5zoQ4MaV+B3LCOlo1aIAE8Yw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816db7ecd0-6416b663-68ce-433e-bb4a-026088b1d897-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aebd9e549261e819bfd530943a9cf455fda27a65e6c131bfef4c9b02da6c4edc
Date: Thu, 16 Jun 2022 18:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655403179
