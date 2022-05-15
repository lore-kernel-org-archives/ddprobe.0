Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006E7A49
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 15:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652628059;
	h=To:Subject:From:Message-Id:Date;
	bh=FQ6bRQCNrXNXSEUjCWNIsh3FywrlEGd+GkTw0ZWXZiU=;
	b=Qns18UuvyMH2QZHwsJxXuwyhywOm/MfLHB0m2W6oDU5Tm3a4UNHW/m4yurQbSK/n
	/P7W0WTL7ZlP4uZ5U/TN7M/auLx90Jcz24lP3s9HoeI6pWUi0ed41xD2Fkp+X2hyvqh
	p/VWFTfpBlQ0xbJbW1HzbXC+FDlKSZjmi6ZperS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652628059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FQ6bRQCNrXNXSEUjCWNIsh3FywrlEGd+GkTw0ZWXZiU=;
	b=S7WFx2Pb0Tf9PmyGdTcksqgGxY+4DMJuGnT071MgoKVULSMJu9/RKWfY9WoJcKsC
	zAvCInsQeGvfcedUjr/7NcW6WClDfrXvrccNcG4WCNf/AkYxhn1QSLj/ZrS5LMvOm9a
	kPkjOhBQRCAwuk/MD7whXJtDde4EdC6N6JY7qt+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c84ef4b7-1618ae14-5357-4ecd-983d-b2691784f3c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dd98680e9126d337266b2d6f5d7f230ceacf900c2a4dfe0a40bd8007d8e4101
Date: Sun, 15 May 2022 15:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652628059
