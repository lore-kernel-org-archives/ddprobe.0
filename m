Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EFC2F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660338652;
	h=To:Subject:From:Message-Id:Date;
	bh=BFGhVMLIQwU2tKSGphehKaT9ZIfxj3zIU2IMnr6DmR4=;
	b=RN8KmA9WQKQTEUjAXT/ki70/dfhq+ZQVmPG8a3BqHIhqx0nCx7Ms4DkS5r9QeGgP
	x3N2vEDbqSaE/J/RBIcR9iALOT/ADWDw9S10oLVtz4Z1FDqxlLeQ6XK+JcxRRzfQ7J8
	5TGj1yBZtuSoPLQnEhjEqBhL+tvhOsa7ZfsfekJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660338652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BFGhVMLIQwU2tKSGphehKaT9ZIfxj3zIU2IMnr6DmR4=;
	b=dijDa725cjJWli4cL+8zqD4LWk2G3gSUFZ6bcsLBRd68sDWb2Arq5AOk1NIvXpLA
	lc+tbFcxwU7XoxtWFO3US6gYureJaGh4SkrIYxBXJmRX7MK11AJBzA63P7ehhFBJwms
	5/zijI7u5CL3UFE0F/k5jXkNqh849H8vv0yKV0U0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293e545d7-a05ce57d-9eb4-488f-901b-99938de8dea3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ab9a72ec5afeea486d7493af45d46b1c6b302c2424e8099bbad802e446389b8
Date: Fri, 12 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660338652
