Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EE75EC5
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646170285;
	h=To:Subject:From:Message-Id:Date;
	bh=7mkXF/Caqq/C3veWjdSlzSr9Td9Q+FtRZOuvg+jiVk0=;
	b=ESyBpZRqc46lhOvPBEVpdYrbDnR+E54k0jbxSblPVxIM/fJ9jh0uk0zdAI3xnzxu
	WZHRh507kUosBW1hP8opdIYLvqLZTt1PMTbFRZVKlHxZDUXZurYvYOZSh6cYCnq1W/0
	Lx4XHR2LS34JfU3xqQNeL39kftMI7u6k2/UYmSX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646170285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7mkXF/Caqq/C3veWjdSlzSr9Td9Q+FtRZOuvg+jiVk0=;
	b=ftDqvQisxc6XcD5UuZnpsJLeod5ioxeDJJ6aNOAjPPtEfdHMjkN5DApZ7beeqiIX
	/gDNpXE+ZSJUCtHF43O7YWS9Bpa+uD94oUGXf/lOk/GYuPe6Ey4a8e8pPsiA1FAbDC1
	JNjN65lPjTXAKIomP+UFSEs778XznzcODGNtbMg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f476523bf-6cb4d7ef-7bf9-42ad-a1f5-177784ed79f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 103a3dd3063cc2ffb4922ed8afc1efec21a595fd9eb1faf72983e2e033f7a80b
Date: Tue, 1 Mar 2022 21:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646170284
