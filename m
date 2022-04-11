Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B801840
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 11:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649678398;
	h=To:Subject:From:Message-Id:Date;
	bh=348AQZPXqYVtK4FErj3yoUrUBK0/3c+JmDTuahFCpWs=;
	b=PXUq0qEV8DuYF/qWv2hpZyeaIpfFeu2QnJ+508ZEO0ajMxlzPPsDkkU/1egOCnyc
	dLnaz5HTmKnesvXIHdVDgUi8WTYcIIRksE2Pe23yYrtA5RPE9ixiyl9db8zvrjNB9Vz
	WkwRFVpznPFkvoUgmRP954Z+aFatY1ygLHRZSg68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649678398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=348AQZPXqYVtK4FErj3yoUrUBK0/3c+JmDTuahFCpWs=;
	b=FudAUwtlIA3VvPqydvIWmoq0cH54hd0qHnig+//tuRMVCIVw042pDnhGn8tVBVJw
	/o1RsI6sAiOdJzDZTc5o9/D/lE1jIsP6pHoLmByVaebXj6Z9WXMp6MnuWvii5Ef7fmR
	cyQs/XN0U4uZYoGZSc0VkY5nYNqGrtabGa2lWj4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180187eb317-a054c53e-c656-4475-82ef-ef89a655b766-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feaa09cd58552f674dc87f321da9af372b6fa2c11dc9c3ae449c9d81f10b6dcd
Date: Mon, 11 Apr 2022 11:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649678398
