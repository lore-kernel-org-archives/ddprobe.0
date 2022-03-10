Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84595A1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646942185;
	h=To:Subject:From:Message-Id:Date;
	bh=DJveiL3abrwgt17wyUbaLESZ6xfMA3FY2SnJBo+Wb18=;
	b=QxepRFVP5VqyG5omi11dAZFung6sqyIswbYyiEQoCT6KdKnpVRi1lPdcpMSuEOEa
	/9FZRxUX5B/BhEEcHX9txIu7hPkV1p6eg4cdTlLDW2m+oWu4ZaAV7CCd9aY+2GjVphG
	6+WcGqqrPD8HKd83VSoxt9rIqjnedXnUGIfA7Wmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646942185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DJveiL3abrwgt17wyUbaLESZ6xfMA3FY2SnJBo+Wb18=;
	b=DfdMvBFnstOuB9bre/dCGHghUkoebzwK4s9lfsZzycqWZkE92PChAQI6d/JljQlA
	MjEu/ZwRMjYK/nkQqj3iPgXNUP3+FMoFUw83LgRFfSFEqOV9u3NqjyVd9/mXYN44gCu
	Jl+vVXyjA1IK7E9VAdS1U0qHHBIflagoHcXU7blA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f756765cc-edfb6ebf-ff46-401e-a16f-0cf65009272d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80df4e0b0a1de1ec69f26e38e37571ec0ad4d9de12db538c52ea74ab3ddefc72
Date: Thu, 10 Mar 2022 19:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646942184
