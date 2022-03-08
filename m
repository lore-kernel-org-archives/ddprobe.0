Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D3A2F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646705785;
	h=To:Subject:From:Message-Id:Date;
	bh=c66qTfHsU06wh2+VU6/OS9KUwMmcWRqyWOgD2rps0TQ=;
	b=e56Ax0TnMAhvRRiTXQ8ZTuX/DW/jXak/wdxBxWDVeqV3mtFlCAtwsNQ3zdoRYEOR
	h5fmYM6utrQVPMRH8Mbdhs74y3ziUsXCdzmG4kqxuj5uUyaLeCEaxMTVCoRd0o6YmNK
	X7xcpFC0+a1OUG/lzUhPCdKCoue2RRZRJD0fz8fA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646705785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c66qTfHsU06wh2+VU6/OS9KUwMmcWRqyWOgD2rps0TQ=;
	b=WZ2ttE4RodqMbBBIk+xEA+PCFeL4MTpfvuteql3XmOIuaJG0vIm4hQfJ2HcEdnQx
	MaLYFMS1LE8XlPcKvkqKGftPDdlKeuuIvgCVF9bwsWlEE37sb9nmFy+p3zKnVGSsDkq
	Kh7IPplJAV2G+xk5YOdaG46CSqKCihGvjbvtxqgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f675037d0-e5d87df2-e1ab-4335-999c-54d4f7bce61e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28eb69838ddc5ca78f23b56a94ca8d2d9c4db500d5f6c8beb08fa32cabeb18e6
Date: Tue, 8 Mar 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646705784
