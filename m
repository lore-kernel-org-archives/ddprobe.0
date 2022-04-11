Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A8410ED
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 05:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649653918;
	h=To:Subject:From:Message-Id:Date;
	bh=Zl5ZYHwF+mWTv6LHcd7S2fbZ4priprOJjRP6CWZWd/4=;
	b=Q4+3h9JYEyPP7PFktkqvX8zaD1Otl1OT80pYRQgpVxQDMSQ/dpXqJe5/y90DB3l9
	w0Js1CWAcu77axKkxaCKsxmEeVa6QSGgUeswwcoRMiShblhZKSkzmFomkQzK1autMTe
	xIOzqRQSnnAEaa1s0rrIQIxUfWxyaIeSV1yxH+Ac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649653918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zl5ZYHwF+mWTv6LHcd7S2fbZ4priprOJjRP6CWZWd/4=;
	b=BJYjNnvS7nUtpSLsWDP4sQC0lB9l/TEC1geZp8iz+KEgryqMz46Jzmt3Yxvxc+jT
	olzV/KSLRVvIhh+DUFnjnIA/29dMUhZQ/GzQ9haUnpiDREqy2QV2FPaupKimymQJpgw
	ldGqjZ+bEV1vuY604cO9MT8CH+PZ+hbgax2RxEI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017092a64-8607d39c-7f5c-4fa9-bed4-ed8339c318a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f62295708e7809275d66c9badce503c55edf85654464c36e25cc98bad2bfb174
Date: Mon, 11 Apr 2022 05:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649653918
