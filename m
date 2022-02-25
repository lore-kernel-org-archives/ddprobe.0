Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709CC1FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 11:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645790189;
	h=To:Subject:From:Message-Id:Date;
	bh=hQt8EEbZpQ4mtc/+VfLnHEB520Eu0W8uNnjrzHEZeno=;
	b=DLh7uH5yXavc6fzQSqqvLVUMlkyO07vnNLiBXK9DUDrFNlx3wA3WlbGIzLC4vNik
	31AGx6KI7t5XExZzDB0WC4pMGbnOaBe+FezTaI8XBs6q7T7SwK23nqal++GF5AztpSt
	zGU6HVVcFPqsjA1POvGucqWq6QhmCbxTPpDaCfks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645790189;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hQt8EEbZpQ4mtc/+VfLnHEB520Eu0W8uNnjrzHEZeno=;
	b=cvf5nNCPdiRxlZYhfFZuV2uGhp9BH7fGx2iMOlvk37AtOpshRHuk5TSOzzdjk+za
	yxgONzXsR0WSpstfZExjql34Vl12+QtIZjudknVwhc+QMSPPas17knZ9hBISQsVWQCQ
	tT/o0BNcWylOcYGDykaDqMWlnRW5/zorsN23YasY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30bd4548-cb66ce3b-cb35-4d6d-8fe2-aeb91e8e1977-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a65be62018366e729ac4b7362c4a98f8a2b48ac2eb411021b083b38f38bae6b3
Date: Fri, 25 Feb 2022 11:56:29 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645790184
