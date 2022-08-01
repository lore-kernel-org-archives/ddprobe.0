Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C8D7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659333052;
	h=To:Subject:From:Message-Id:Date;
	bh=r0OLcjiV1WP3nz3OsMUYaPKLxkcd7W9mcnuIYTxukwI=;
	b=KyYpZrVKTu0N4yIxSntxljLwjb6P8vjL6aQH8ojmS6HhVx9M+3ya4X0cVLccSGHv
	PVNIugyXsT8PCBZ9q+hs7f04g4+H46NMTO1TZ439Oo/2oQ+C3Vq11UgcQ4WfL6tVhMO
	FdVGvYCSKKICAgzqBKw4VudlXlDOuGNgTEOW1LeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659333052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r0OLcjiV1WP3nz3OsMUYaPKLxkcd7W9mcnuIYTxukwI=;
	b=gdjiX5cRLDP9/e8ePeEmuml6K/lwtfz7bqW65MqzVk/IPiTS4FLW3Kqf2G/isQSq
	Xe6KYQWSr3jKz/SDwkVRYd0EWqbMTmt2oQITUXnSxD3Nh9Bl9t8HORi7i4OmenbYUDo
	5QAwBvS3MXZeij6Ellew88YN3XkpOKJ+wqVxfO8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257f508a3-eeb99fdc-43d3-44b4-b3e9-b5e2bd22626a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4783d85db67efac2a75aac785937ad94fb35cf819aa0db7f5112685c7100a5b9
Date: Mon, 1 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659333052
