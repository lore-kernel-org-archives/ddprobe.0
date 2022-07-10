Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D457A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657483612;
	h=To:Subject:From:Message-Id:Date;
	bh=uU8GVFzX8Z6bTSirxdFKnNDF9sM4huoXB3rrVRMehxc=;
	b=C7oUV5zXbEZrsZ9bpu20JLbLYwV8wbU+KNMSI1bFjiYqToRT372wTj9sI6d+aQN2
	NOoP+Y+nwTiIyAbKM43z0NUOHQI+wuNV8YIUinsr8wIa3FbxGvEfBPD21AnNqRmI1tW
	MxfGqGn2vkGS1am2HJtY0LFKETYGPtKaTacJFayo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657483612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uU8GVFzX8Z6bTSirxdFKnNDF9sM4huoXB3rrVRMehxc=;
	b=cdR7Uk/g9uPc2kfNPPKYDh5gYGpejq80UGJp4RmcXD13T5BXBKM1OluqSjRMIfzo
	AYiBA476FVo/7PjgumdlD3ZTqbygPOp9oKfvaphy9X1RPWyfgavRiRS2rnNeXpp9QQ6
	Bepe9GAkMradh0bCucjp5pLxPltMDh9/MxaG26M4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9b8d087-b312c593-6294-4af0-83f2-1e43481dd4c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00c1be634df1dd2f505852d3af2ff4c518bc48cbe26164ed7256f0352fd4692c
Date: Sun, 10 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657483612
