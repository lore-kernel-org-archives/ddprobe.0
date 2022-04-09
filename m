Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35783621
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 03:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649475658;
	h=To:Subject:From:Message-Id:Date;
	bh=zuBhlCLGCPIAuuG7Nh7RJbJmrN85/bpK6nx3Gxw1eGw=;
	b=T7O4eBntT8/T6Qpn3PRUnLYEq64fo7sQa6ZsNEDiue9ig5Xw97VX129iWddfQN+t
	GWmWuaS3bWeyEQnHGcJ4FF3El85IaYSaHqoZpI4unEn80zKNB+StTkS+aCbjLHeanuH
	yrykaSULN+wPsHNewfIeQOHfS/mx9HkeGWmvqaj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649475658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zuBhlCLGCPIAuuG7Nh7RJbJmrN85/bpK6nx3Gxw1eGw=;
	b=aAzp2Pmynvkb0kwTQ0YDZU70VHza46DSJNCRD1PR9+otyFrMLviOEEDeZy548vrn
	ucbN22uROjolEGdAFruQynb3E5AP1b4ZvixFDRUo7C5N6gPRTqe0VNyVI8h7qwPnme+
	M3evUxQA10oa8tiLFuAmHu7k6h3ODOdbiQ7s+Irw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800c69220d-f71167d1-732d-40d1-8cc9-c98941219f4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34cd1a12d7d8d86c5a24221a632af715f54eb9fdfe7259f85434a9c1404371b2
Date: Sat, 9 Apr 2022 03:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649475658
