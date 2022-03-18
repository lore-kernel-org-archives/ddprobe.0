Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BC25394
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647642985;
	h=To:Subject:From:Message-Id:Date;
	bh=DSDBzL1gXOIYYpYPUtmYnI5ieUtHDjnkFTQvWZpFS/c=;
	b=Pf/ienElmzMUCOt5beEvdWSL0uMWI7fCb4ci8G9HQU+0B3nHGP+vn76Uu3/nIfNZ
	G3iZwFv4y7HVoFLLVwhuWcr2vkpOW+b6fT9B6ZIl1Aly9CswG4iqSbNALffPdfR2orN
	X8xsPW5NrRy+1ZuOXxbrPkAWoWzFiKGaTWu6HRTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647642985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DSDBzL1gXOIYYpYPUtmYnI5ieUtHDjnkFTQvWZpFS/c=;
	b=dyQ61lp1Y1wYiq4yOepPo3rSUlI1FiDYizKRwRndf52poIQHGv62qIia4GmGN9zE
	9AJ+NqdeWPADDkAJcROCou0ZOMOVMhScjs9HSiSt5GWh2+FdjD9sbQHJUk0NZDX+tx2
	6wjG+LKBcreS/WjhRggiTPpLdFMDRYuRt96NfMxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f2cc17e-244402ef-d564-491a-b20c-f21fe5a74e9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4809aea4314af41f83925ab3ef05345f310af7c7b28f701c9ee5994602eb7964
Date: Fri, 18 Mar 2022 22:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647642984
