Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969307B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645552285;
	h=To:Subject:From:Message-Id:Date;
	bh=Ur9yACg56T2qPuWPJTGvRVbB1wPLJ5Aua0Nw274DNNQ=;
	b=Hq73e3NjNnVMpBr2NM8dhDon/+NhDflZnDScdKNndWfFbQ/AEMW1io+5q8tZFj97
	XLQ/V+aI/drMWZwhFyTUbut6v0erblT0BzObR9Zou1VxkWtNMqZk3jiMSPAhC3AHUU0
	o/9t4sdt/G9ZzAuju9qzWEFlbfbH13+P4fJ25euI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645552285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ur9yACg56T2qPuWPJTGvRVbB1wPLJ5Aua0Nw274DNNQ=;
	b=HOyT+r+P2xycgHNDZi9Y87AnYWY7RqQMIj15VB9J2T5HM3wovtic+bUvw/qhJ+/y
	I/qAhmeKNsCRNsKvAnBOVLqWRMtr9h8F5UIGD8lnYARAhB2LJxfGszwu2A0nokz6HSs
	bG9Xyzw5TyA6Q4n0Usx/LzveK6OyrxFxpZBo8aOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f228f346d-cf5b55f2-0e99-4c48-84fc-ac15c941daa7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8967e2b7e4f2dce4bf907ebdddbc4e02213ce844b24423a5f42046b6ac7d375d
Date: Tue, 22 Feb 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645552284
