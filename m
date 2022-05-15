Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09607623
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 02:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652582999;
	h=To:Subject:From:Message-Id:Date;
	bh=G1SoUDhf8n5BD1/yfXk6Dzn6yNTOkCXzMSsjWI3w9UM=;
	b=QhVm0OX7IXqSMBAgG+1G9RXlFkq6yVofADz62H7TflSzYBAxelO+RUQ4gj+8e/AA
	6NbI97eGGdP5ayKTzpkslwTHQt32zbV9ufKawNIbmILhiPCuWd7Z7Igozy09bYTf4kl
	BgKAUpee03hIfiLCJ0+fxAHe7a2XyEEV4GCpgopM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652582999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1SoUDhf8n5BD1/yfXk6Dzn6yNTOkCXzMSsjWI3w9UM=;
	b=KEt9PgJfgt1XGR90rZyOcwfpozFzYYqBD8hnqOI9hGjVADm92nu5OmcRb51X5xbK
	r1wSiWkFI7s2335MStwVJ5ozQNYURHqzIXG/3Carg5/a11M1yCF3oG0XeVg9RwI3VMM
	nUV1jI/joq8GzgSSO45dKR92uvpNMUidBnB+j3HI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c59f6524-213cc660-2625-4147-b462-70d4ad72d015-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6506e695d2a606bdcb423a49045eb4c0e95cfccb82266f65c6c9dd33db4a2d3
Date: Sun, 15 May 2022 02:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652582999
