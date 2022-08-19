Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0F94697
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660932052;
	h=To:Subject:From:Message-Id:Date;
	bh=B+MhT0BgKOrL0erDAq64fYilqmimrSbRxkDtTh6f+vQ=;
	b=e3IfXDsVriCq9iHV9J+idSoLQtYBDrugH3Xfq09P75z8AbS/7gkhcbpFdhebKObR
	t1bkPIklDk+tYTNwAWZ4b2URoRiEIg/5J8I/quQMWas2Vi8sPAGQAytZnPs0kGCKg1s
	ufYzx4iFvwZKM2EVRKraz7SDR6aI+poGbbR12Hnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660932052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B+MhT0BgKOrL0erDAq64fYilqmimrSbRxkDtTh6f+vQ=;
	b=CSpKKic0W9SlBnZpLPEIfU+ZmLcd9fWfqJIkPkOuDklhR7kr5embSCoau3H8VdtV
	6BixMhVFTwoDYNOIG5DkOO90tkQ7I82P/46SXPDm8X11acIgRNcoMN0QPGTzlM/2E0U
	HC/ox/40DdlMZH0LRmOnECpj7WNnc7XhOCBoae9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b743d6a9-324f39c2-0dcb-40c7-8fa2-ef34e08a9e5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ed91e32e6ed49e90656fb95bd2e1c9313ede123c170d1a16e84e61933aa6bcb
Date: Fri, 19 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660932052
