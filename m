Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EEC17E8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 07:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653896819;
	h=To:Subject:From:Message-Id:Date;
	bh=oMFComNFfABGk+Uc6b6PozLZN9PoMju0jWWGFdC2Jjw=;
	b=Q9kWhfWJ8zpu8pWVDcqVW53dXn+qdj4mizbHGLV3APXC4jpRvreei/se+C8NRdQu
	7jSte+aDHp6+knrQSqfXejN+Bool6dX7G2bFOdnuZsbbGCGl+sBFujHLICIYP+j/Ckl
	jVRnbrQXd8ngD1WZ15HJlcgdP3A6nq1csDhGnGso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653896819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oMFComNFfABGk+Uc6b6PozLZN9PoMju0jWWGFdC2Jjw=;
	b=QqfmK018i1YhBpwbk3dAn9gn2bDnpJuC6F6Ue23SLWKSMu0FXBrQNleiMM1Hvlh6
	us9KbpjxwGllcEY4zJ1KqomIqvyKPEmFb9pB92aktMguxRtw5zPLkCFDM979Bw1KEcQ
	QpNPDryEGVn8KBLbP2yhO6PLiXsUGc8l/fXOrS7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018113eeb222-6dd948ca-db75-4796-a39f-09d402a965d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 763360458d3c1c499e99a7563ab9c34ae01469852664f5fdb3fd569a5fd1abd0
Date: Mon, 30 May 2022 07:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653896819
