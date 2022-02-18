Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD0C3212
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645158984;
	h=To:Subject:From:Message-Id:Date;
	bh=wJE5t6VO+nQoMobr3RADZhiHTst7vKbxrymfx8D5G44=;
	b=IYX5MNoZT72IGYFd/eAXRdxPQel3+93gapPlV6NOW4uNBdErkziYU0SZucKi94gK
	VtXCn+33i7N0Scsbib4zVlqPjyMSIqs4WfyiAGUvoAWGtd+0S8TsUwbHhAu8NUvTeBe
	Ymc3+LfQO51loJ37HqdaLJs1985Q0SPIObGgi4xI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645158984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wJE5t6VO+nQoMobr3RADZhiHTst7vKbxrymfx8D5G44=;
	b=Nzv3K3fm/nROFtM4zrYGc6w8kZTw1HGKl0X/fnZt176EIDlcoOGfI0lSCU6HOOHo
	ia/t/u+6RX/GgDAWnYqaw0kbQhXzcAF0hrqWPfx/fNWze3o6t/4vXSKnoeAs6pm2H0e
	3quB8TMf/2rS7qOOJOSQqQoTEeCryDjmmYwjwT94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b1dec86-ed52e7a2-7f59-4c2a-9847-b9763f2dc119-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f659e2e5fff6b4ce15cc5a199f89d7c9fadb45cab4c262a67c281f1c849497fb
Date: Fri, 18 Feb 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645158984
