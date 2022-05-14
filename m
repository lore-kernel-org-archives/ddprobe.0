Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828D62B
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 10:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652522399;
	h=To:Subject:From:Message-Id:Date;
	bh=e+5dMF9de691iAOoMFxRiY/Ufr5CUR9Uc7p+0OAmXpk=;
	b=gE/LGajKazyJaOPgcbuPIsRLpUdgZP06AZg+IFfAh6uAhQUMnrkQqBDiWqio3g+4
	Dz+3FQtnHI9DDgTQZSEDcY9pZwpLEGGrVRHqbyZq2WZGIW2pUMV0XU5WbFhei9EaE8C
	+eB6QcyH8XC9y2Z0BE3pVhdgPuyr/L4sq/XUmlLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652522399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e+5dMF9de691iAOoMFxRiY/Ufr5CUR9Uc7p+0OAmXpk=;
	b=gtD1IGHPOIX07MEGjTk6Ecc9OIDw9wAsppaQZWSpf04mt4KKD36vTrtH3+aCK7bo
	kKdiiKZ/bs7ATHmzVLtJB01+gv39xbEI4YOj70u1oAyhLV4d7PlwMaNGxFDOI4hpTRP
	Hl8VQyDGfYwQm3G3+T+5owzDGs3XkwjmwPh0r4p4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c202b611-f357584e-8467-4f71-9a25-5c2e292890fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a220fe4fa1d3db1a7b06609446401c95dcc02d840b111b89d4d0cbd0cc72b636
Date: Sat, 14 May 2022 09:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652522399
