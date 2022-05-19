Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC632904
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 17:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652982479;
	h=To:Subject:From:Message-Id:Date;
	bh=x1ttL/RKYxMRqlOftf4T/teWE/RMx1lkNxxv4XN2Sl8=;
	b=jamiRSAlLmgJaaRPKfqIPDRD88OvdntSk1PSn+amWGLG7gNJrjgGjfzfb80hZWEr
	6NKE2m+tU1q82xCygJt/ZwsGvIfq+0MdhNsBW5EY4Qw52TeYBHnmVE7xCoTW/8gR/Qs
	ZWA2tCJAr+wkFNWVckWhhNE7aWhP3T/D0lJ9HkCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652982479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x1ttL/RKYxMRqlOftf4T/teWE/RMx1lkNxxv4XN2Sl8=;
	b=II1mo44D2Qqvub14QVzzdlZxlTDr72DdfWPXdhscBTJL61jinsrHZBsPdfC4OEVH
	H67PZE+iWPnUSz9/tnAPQbSinCz8DE87/b+xSNbJVkRX+43AABajIwsGveNI/Y3nyRn
	dxHxTXac+xxxE6tIC4cVWj8ko7aQghcem06N+XdE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd6ef9a8-511f6438-d8d2-42d6-837d-6843e58007d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15a3273f6557d533d7d63596910c0950e944be89655ebda467b4ece5cf781aeb
Date: Thu, 19 May 2022 17:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652982479
