Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE0A1854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 17:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652809799;
	h=To:Subject:From:Message-Id:Date;
	bh=icfPXy8SfALt0BENSsE5etR/9zUnKlou+HnoWj9o+lM=;
	b=HRPPSd/IQFtIykJNXkYx8/FF3IYprv0NkGdOMBBPbxsz8+5nhyvtNronCcRjmtmX
	9kPRea+sw+q0rY7tJdjDZZIGuj/mJHn4pWHkQL7Ag1B0Xo31nfSOSJKucFYfP//96aG
	mtAyEzGFyn+895Lvfe+vasjaUyL6D7/2e/Y0rI1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652809799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=icfPXy8SfALt0BENSsE5etR/9zUnKlou+HnoWj9o+lM=;
	b=Xm2EI9LrgcP4DjI/ydiaDgsMaWme+B9trI1sQGQd9N4JgTQVSg4sUVIl5AT5jUyf
	cvceFPeM+kTYdZ5FE4z3/jsKRIlCS51EFryAPmp5aH8Enqzf/pKkzefdAZC2GwGtbaH
	vPh8fUXOMOJTSU4QZBCH4hx72XL/Wr4n9fi6J6lE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d32416c2-0d66337d-1880-4f38-916f-f18c3382e329-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bf9bf932fd933a259ac650278d51ebf84f27ae133f6ecf670169ec136e91a11
Date: Tue, 17 May 2022 17:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652809799
