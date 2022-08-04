Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640EE23A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659615052;
	h=To:Subject:From:Message-Id:Date;
	bh=5XGQsiwFrFVi1m9BtYjpiw3BmBSV36bM4/05olkpo1Y=;
	b=DL/sjU60Elim+x7n6350PSs6tVJ116jQ8FWGMvFs1bzwYpqKydfL05KrQsxMKtv/
	Up7/sjG1JlE/PbVvEWWuDbTkgzomqRwWBV1FHvh/5pjQK+NOFg5o9RVJuL+JB2ypOKY
	jHjKAHDbcJ0ey1zmRs4wo0mvTJF42o4HpVPPRFb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659615052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5XGQsiwFrFVi1m9BtYjpiw3BmBSV36bM4/05olkpo1Y=;
	b=i8QQMIwpGqRnPhM9q6URZv0vuw54OCqYBs0MwAJ9YSFD+ziPHXSqnK48LvbOQ9L3
	8IJSd8iG5RwbnrbO0wV7RyTZeyKPoS3BHDnbH/kWieSJgw6Ar5HRkenyY5FI1Gn5hd2
	p/jfGMy8K8VSqgXWw0CptaG66Wr4WyxWWwQ12wOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268c40326-6145a46f-a538-4cd8-8001-156a7ab77d81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90e518ebef3de148c545079dac1c51608094b05ad07009c8a2cff29c64b00f86
Date: Thu, 4 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659615052
