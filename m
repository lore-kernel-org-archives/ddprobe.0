Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D662A2F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656263212;
	h=To:Subject:From:Message-Id:Date;
	bh=kcI9Eid5+GweeWnV30Bt9aMVOi+gu7ceet4p+8Dvbms=;
	b=XR/zNmcqcB9ufbPne6v2kdRSFqYv6wUaHUGrKOmxFGwhdXmhE3AsCT+CxH4fVzOV
	UwDTK4nHTccml4LacH1pPxm3WuInZanQ0ADOH5lFrf590F5it4OfHTKTx5T/8/7GryS
	WaSD+6x7k5JbZtFLrj51D2iXXI56AJutPns1odJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656263212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kcI9Eid5+GweeWnV30Bt9aMVOi+gu7ceet4p+8Dvbms=;
	b=E989ZmNeg2Mmsatmrfr0GtQldaugryLZpLMyZQcUYc889hXh/d602ICSZSe4jKtz
	higGfZo2O3cRQPqKPfx///qrf9GmDolL/tDZMN9dTA00uiZryn5FF9sR15ukyA/GNjI
	aKhIaBf42XQDaHHOJjqV9QVp3m2YKAxaCoBr9O78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0fafcfc-d88aa9a5-1014-456e-ab5c-6e3212a9cfd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8d006692600de20cd1e2432d6bffbeb56af00ce011825bd1c4250de9dd9e3a6
Date: Sun, 26 Jun 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656263212
