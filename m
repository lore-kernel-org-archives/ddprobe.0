Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D304696
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659103852;
	h=To:Subject:From:Message-Id:Date;
	bh=S+9e+0k9XB+ji3DlX3/AjZJIt7qRTBVI8FE7NrAPKoo=;
	b=FNJxz7kFuIU8MXVIXcTtSEoV9vGueUvv77Gzie2N8HIT3R8urEVi6GNs4ZOd9xva
	5gFuwoSCJiVu2JI2BsULrDnmWMOH6UJn+CDm61ce24cDG+ujUvO0zB7/c3sHC46qyvR
	1T04AtoWDpA9mc72p48geLsqWRsw6wjyimda85k8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659103852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S+9e+0k9XB+ji3DlX3/AjZJIt7qRTBVI8FE7NrAPKoo=;
	b=WB4a+ZHhuE0ZOSZ72i3d665nfDXqp9rzqMZqcJTzWWL83sS7WTwxcBsQU6dH52E5
	+4n8TBmp7fVCDQnV3A4C0qGtvl7OSMdDvHYIg7xtFRo3nxj9Hsqhii/GPhklfBjqzHV
	tB86SzjoLDv6xeAwOJuAeG5SmKf25UPA8nviodpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a4bb800-05e7cb3c-a7d4-41e2-8cec-c6029d2fe060-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68c25add9c913b5f8cf687493dda0538639ed645d0c0849d0b83d13b4e929321
Date: Fri, 29 Jul 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659103852
