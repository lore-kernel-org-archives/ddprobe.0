Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75AF77E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660525252;
	h=To:Subject:From:Message-Id:Date;
	bh=ajrtmfp94oiDLp3qmnTpRZIFzpHo+coXo37ki20TU24=;
	b=QfQPw/k7DF6PSnt/a/pqf4YEbGRqzR7OivLChWv8xFqTy1MTi+M5deYiMZ0/rQdQ
	rA8gafqN63UXdizw5wlX/60Tc32rHIDAY/1cj0ZHYOT9BGkyJgKysPhqFDUYhKqKq+e
	kgIHENyarwcSHHYyEpI/XHLUWM1Cqtn8aA9b6qMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660525252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ajrtmfp94oiDLp3qmnTpRZIFzpHo+coXo37ki20TU24=;
	b=gRS07Tqyy8EkIzwNU0ntp3pnYT+145c8FaAIGBNMJvzXTwTWKIwJimtuK+E1Kjox
	CPLWoFUesJbJBUgeVm9T0CMseI+WIL9NTIvy9IpT+xkTIK0F1316qedrlQ5WSwwvb4j
	xGhE8N/KSwOQ0MK45geKpNHruB0YVRW6Ce9dv+uM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829f048fd4-9874e562-9922-4b85-9e8c-729e1eff2df1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b6833b4fbe9b312afee144e3f07d05cc4c21e40580a2168891a0200dd192d03
Date: Mon, 15 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660525252
