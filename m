Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0632F17D0
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 05:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653887579;
	h=To:Subject:From:Message-Id:Date;
	bh=1xXWI62UsJvQkpOoHyWgQnPgPEjibmxQW3oPKWhLDRw=;
	b=kIdvsa0epMBI9O0TrUFePoMjaIhQz31Ne0TRDoc86i6l99bKybucnKYWIl/BcJfO
	g9C9go3Gqx7SCfcCumhEH8hfIyzSttWRRK81B5uB3um2pV9ePt2BHBNjHcsak+AbFp9
	xh/UKZ065Wi56fA0/BhX/mSAAl+PfBehha8uywSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653887579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1xXWI62UsJvQkpOoHyWgQnPgPEjibmxQW3oPKWhLDRw=;
	b=Ukdq9oCxwfI858vPHCsRD5JPNc1GfJl9pWFg1dpL+cwjqG8WnYBZipTlMXgNj/gs
	d+D9IGOZct7E0+XSNjonzEnbJbsOvTitpG0CpLUyR/lujoKCgPeB4Vn8frOSEgOKqdL
	qP38ZSG8GHZ3FXzJFkoS+NhjshBsfQ5SH59gHMFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811361b460-680b4a71-7c45-4e55-be0a-18c7a2d65048-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f61f700d25629c6ae8aedbce947932571371769da5e7b825c192531c4b243bcd
Date: Mon, 30 May 2022 05:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653887579
