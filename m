Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C05433D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647006084;
	h=To:Subject:From:Message-Id:Date;
	bh=R7MkBEZ63nzW+O9/o83gMPLhOLY6B4wisyov/8NlJ3c=;
	b=E/AxM160zoNRDHYQGzj0NtVaL+eaMvkJf2RnVgCAjtuGlgF9zp6jgSX1ogGt895U
	fCQiBJmuNQY3qQUMoV3XaadJd5VP/q5o7EfJ/hYOiNcxtZRIMOKEXwofXOeLrokcYDm
	u99+dtk+jmrOrdi61q0W4c437TQ4yXxPDcRAM+i4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647006084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7MkBEZ63nzW+O9/o83gMPLhOLY6B4wisyov/8NlJ3c=;
	b=LYXDdn+8nOH1VVZtkJJoNxz3Wg/PewnwtWUikYsy4nYNYycfctLpxLeNZfIuuxpf
	et367rBwn+B5/XylAoU8LErldAO7h1Ri6iX6CMSH/345jnloIISYtMRJPPX7MAh8wsR
	a011z+Dkqg3yExkjfI1BpbonDTSqsjUAVWLmfE7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79366ed8-de1dbbe7-2f77-4e46-8090-249b91066f42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7ae000f807a102d0ac984ce8c7ad31acfbd86b5b9021403e8d437cb3ba0f940
Date: Fri, 11 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647006084
