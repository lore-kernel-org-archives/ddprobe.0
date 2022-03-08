Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5814A8F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646750784;
	h=To:Subject:From:Message-Id:Date;
	bh=94DLNH0ipUVFQB+y711z2+AjoIOSt0gIeOQCvdWxIAw=;
	b=CyKNMLgKtb7/hEDM7CKg2Xr3km0sYqrEHnpASrjN8ScVSQGNdacivi0zQQlf4N35
	mzTeabclMqpKP6Sp3Y9XnRNsgLdsFNZ4+E42NY5PEEaUGZm4EDGSotG2ObrFVKOPMFc
	/l/yq7h9iQ2FnueCFDjspbSltZZZMG6Y8zItbVVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646750784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=94DLNH0ipUVFQB+y711z2+AjoIOSt0gIeOQCvdWxIAw=;
	b=h/It+vDGICQQF/OCyt9AEorhgSWcbKsvxc3Pnm/GXnf+wiRAB3xEFuLXzojGxoGy
	31DVty0nW6FVaXBzooXjCAKczLzQYs8t0ph9XvSFwhX9xWZizQ5khpqxJoJ5YkwaiCk
	JzjZlhvdm+BMD6ffGKCzxPlAESQCYXWkFZQOJ7IU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69fedcf1-038485d1-bd70-47a7-b560-e3f3405e44d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c68636764fe1fdaf9635c6f840a7011169f9b8782dad9af8a24ca21388eac8e4
Date: Tue, 8 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646750784
