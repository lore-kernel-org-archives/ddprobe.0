Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97007366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645498284;
	h=To:Subject:From:Message-Id:Date;
	bh=6Kc4N5DA1EUK6xHZEhdGpX4JUbNy7HincDtdwcLX76o=;
	b=B97AQHbtvphg/ufzRPSiVZ0lkhDiSX76KfkoZlTxaf/wa8GsHrZ6ltyXBryNZabn
	WEnBkGt+stQGi3Xs7+HdWmyTznw2Ceb+OOZaI1rd/URlYIt3vew/E30M8DBGQXgAkK2
	d6QingCxUyfAOoyk7sTj2sPpinuRsTLW5zy54dpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645498284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Kc4N5DA1EUK6xHZEhdGpX4JUbNy7HincDtdwcLX76o=;
	b=Jx6mcwNyPUY5KVU5EWiilSHKNRn47LqkyMIzNpdeDzRK7D8rzYiOApablKdMDh4d
	ngFe5neU3pOUJ5fLWGPKuts+zDVZYxfFgqk612PcgkTO/IVam3fSoaNuVvR7Nub/v1U
	yOsoyeACAyz0PkS/yrapLOntKd4WjQxMlENpHMzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f573ad5-2a418a74-a39e-4a10-a2e1-dcdbcf3b823c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f08c4534814d029ce6ee7d7582090505c69fc849ece2ef11ba4e4f4c82d66a0
Date: Tue, 22 Feb 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645498284
