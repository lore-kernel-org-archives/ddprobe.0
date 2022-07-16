Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F20A7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658012212;
	h=To:Subject:From:Message-Id:Date;
	bh=8Xw1mEkQrVkWu2oXII/OerdOfvh2WLZDB8V6+1ALbw8=;
	b=ZrDI9Y7Rz6AXXhlMz1eZgaxsB7IRSgNSMFky9CDpBWfMLhfIwQcMSoQmX39i8SWE
	I8SIS23YHuDgfmsO89+x3gQ1Um7HTjaPPlIeeHoQoVWn5DLOQw94oItaDrUY/w285J7
	aN3+JS/A36f4ImPaGB8+XUutW6vjHEdXCGbNbZBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658012212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Xw1mEkQrVkWu2oXII/OerdOfvh2WLZDB8V6+1ALbw8=;
	b=PfQ3M9FZao08YTJfJYxCiqKpR/JZqkLS2BRK0d9lJWUkzEOOckTDsx4RkmUdWU8A
	cULfdbLiAajHYAEe9aFBDDZH7wCLZ+Gp6eUabmfqTSw+5tpMwIrBlIJq31pAcrSfPQm
	5JGM6jMe3j+5Kj6xmp+ZL2qKBHXBTDsv6SxqL6A8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182093a9c38-55c77560-e07b-49a6-95aa-7ccf3909c099-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f157cbf6016834c0911288023d74b83950c1f2fde64df470476f6c46da4ab1ff
Date: Sat, 16 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658012212
