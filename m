Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FCA290E
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659732652;
	h=To:Subject:From:Message-Id:Date;
	bh=tsHwsGTh/V0ff9R+ZxktZUHsqn6lbIOBUS8KJbmvqfI=;
	b=jJoZjoR273/Jzh+UJT+AaXTkfsUd5zUW8YBYLVl3PhBZS2N8yIVPViWfbvFiqcZ9
	yGZ641BY5A3CwlQNwgeTzo5IA4jjMUaPmUJULOuG4Jtc5ncRfEnoKlE9RKirF7sy1l9
	PdzLgcqAQpaJjATKwR7B/h6pq7VLfGH1UDSmxCJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659732652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tsHwsGTh/V0ff9R+ZxktZUHsqn6lbIOBUS8KJbmvqfI=;
	b=ZPLb1JAzY9HCLvB+DZ1iUwkGRgqcaQLXkEB53S+bDyUObIh/lTznNoIXzeaEatnx
	vrUu3heGxua4YnHFro8TMebdD2z0JE28OvxXt3FLy359khxsp1K/CRM63BLZjPTDqJH
	xxTeW9ReIEOb6nwmgsk6W9H5cP6YqvitV+WbBTS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826fc6728c-99de6c00-a1b2-4f8a-ac44-e73179b71f82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9d6c6d2199c3a7515825521ad8afe63e2861153f67fb3498efd30c60300c4c8
Date: Fri, 5 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659732652
