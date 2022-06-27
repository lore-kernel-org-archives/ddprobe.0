Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E9E3229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656373612;
	h=To:Subject:From:Message-Id:Date;
	bh=0fREqhhDG2JQM/ypdXt/Ibn0iaSJ7+SaKeySVWfHSMg=;
	b=Wdlm+C5Ck/JAX0j28yF3YumNjLlAI4ybX36tF5kBmtBETOkY1gfKhsoUKGOycZE7
	wH3yy0SKOg0E2pmJTFZuAu3iJv8hcKDCjEXV/FhjLz6gCsql8uof2hhXEmwWB6/B8B/
	x6bldgSln2bCQABgRE1xugg1BboSmNYOeEaLXPYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656373612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0fREqhhDG2JQM/ypdXt/Ibn0iaSJ7+SaKeySVWfHSMg=;
	b=UTotSdXE4MVBmgmLDSRuUvWQhRe5j2Gey0qqC9z/xGrAbigdU0qL8WL48hwn/tuq
	IOK4yx4yJ9OCTPbiiweFM0VxP89F8aMh17CAsEAy0nk0ZmWEtdS5n/vHCoTSD/MWXKW
	2i1W+mnTc4VyG8acLPILHzJLSIvcPiX2snKSMNFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a78f8f1b-98ce706e-d7a7-419f-bf75-32761b38afbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: effa4cd39737c994b1e8dff3d62659415f7e238b12108490a591acbf3eb90574
Date: Mon, 27 Jun 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656373612
