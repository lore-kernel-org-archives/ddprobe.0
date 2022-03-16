Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A963B56
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647468384;
	h=To:Subject:From:Message-Id:Date;
	bh=jJqrwJRShEN6fWAMMEjbIp1COjzk3OWsmF4CsoejQA4=;
	b=iHvVi5u1MT8VyA2RDO6qPVyW9PHx1ITX8bQoYbJVK12yx3s4Q+YVFxBm4ct91oU5
	PtClYpQo6KdK3j3Y1pNRk8WeQRlmoBJudb5+OUwug+EFRoTzWfAJHdFlOqfVSHF87lr
	Q2TxdIPY8pyDtkqmE7JWhXVdKy+pYZg3/WNhP4ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647468384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jJqrwJRShEN6fWAMMEjbIp1COjzk3OWsmF4CsoejQA4=;
	b=jtTqUXS+4SlNakUYYh3BjCOgnntXieoPSWGH0mrJ6UMcO8jrS2g9CmpuHvRIyIuS
	vZ7Qn1bmKIyDlKaP2VKiU0xSA0iYHB1J3o14/SSdOjVPuJaanO/ekqv6BeusPsnKDlv
	NmL7bAzTGew77eus1b0lZI8i9n5yUTpdb9KATioQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94c49238-3fae7b45-d7a3-4302-bbb6-ac0f9dee2036-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 847f54c091269083d1a9171265eb1c4bdc6fd1682191d1b0e629503458a00703
Date: Wed, 16 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647468384
