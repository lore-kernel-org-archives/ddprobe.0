Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073C41864
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 19:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653594539;
	h=To:Subject:From:Message-Id:Date;
	bh=o6JdMisey+V8BtO+le5X1oe0/wKaZ0LJqglF8tOLe+o=;
	b=LjwOfj9GGHd4nnr7w7/Jrxo59UTxvywe00SvZwj2C5uWHy0TW/ulGi2T8xAw4Zfh
	E72RV+IOZwEguWEMUfLcBB2UrDg5J29HNAmkSuCqWokqitBkIOvOeEvVHtKJ5gNbVkk
	fC7U1Ppg77gnYcZA4pGitcwr7guzfevfC7DrnGno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653594539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o6JdMisey+V8BtO+le5X1oe0/wKaZ0LJqglF8tOLe+o=;
	b=NsYfo0HugCxTLCzdkw66VlQNvZZcrO+w/Y6p0bQMdBP64ZkF2bjIFzV/8LqSG/wW
	I1kyiW/fQdFq4Zh9AMtPJgpasyHkcHu3hwOTz/ndA+0yxdmXJUIJlCfJU6Ppw9b1MmM
	S02yDcBARatKn/DUKBoo1PThajcrVbIU1IimBovI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101ea4506-9fa07851-6934-47f0-b2cb-541e3dea702b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70d6077e84aa565b1890d5d65fa87505f340e7295e691dc23a8c295cb3ef701f
Date: Thu, 26 May 2022 19:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653594539
