Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4847E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658595412;
	h=To:Subject:From:Message-Id:Date;
	bh=uLcYQOit56FxqFKSzRKFRdBVzFbmLUhF6inniu7QiRw=;
	b=J8bmKB0yh/jqt49kaj27akVy0LEaKG5Rx7Tk2rtWIIscjVEaDSJgPgTPXbbu7uzw
	2kPbkvqB90A+R05I5sJgEKQRY8QpHph/04qUdE2PrsTiiTvC65Wvy26pdpttvFeIdXB
	4euv0E4JEWG+gRRNKrnhgQ7xZcnZfpK7fqcTqmxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658595412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uLcYQOit56FxqFKSzRKFRdBVzFbmLUhF6inniu7QiRw=;
	b=QlgfMZOwCaSb8a3Me/fwYc+Z9eo5nQEnWUmKyCkwdtsjKMxcirFXoJZjQbK55r/i
	Cs/gTSvqTCncw/fLbh/ZV//J502/GblNMRPUjKTSuBOx1339deuWDIc8oNF1mKt/qz9
	V4YNu0Tmv4kXp+PX4fG1XPb1/gmLRxLRKir5Ca/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822bfd8989-1b8f9cb7-db8d-4a0e-927d-49b53374941c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c3794376e65a6e85529df77913a375bde27d2039896698bc0d9716eb3fc17c9
Date: Sat, 23 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658595412
