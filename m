Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E552F57
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646340985;
	h=To:Subject:From:Message-Id:Date;
	bh=40Yp0gE4NuiCMM3Ggpd7nRZNuX09W1vHgKrM23qKlBE=;
	b=Bf8jJC0uYtHpo/mB0UNS0VR1O7P0vwnPml9X66aWsH2VVCea5B65JnCh+DQxDKKx
	Q/+dgm2V6BwE+Cgdiec9QDKR0ileVjLneoSiajzdmx2bJQM2ozfj3wEqNdY2CA1buqZ
	H17YjCq0/U7TueRCdPAc0yuwVARRzlRvCyFcqZxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646340985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=40Yp0gE4NuiCMM3Ggpd7nRZNuX09W1vHgKrM23qKlBE=;
	b=bVWu7bx9y7MuJBsBs5q1zwr3IaoFvg1ppRNpjQWOXxGuUKkBYeXoh4XTn7EO+cME
	tr+fFV70gBknYGzAhUZOzlKKYJIYlu+FBverx9eoQ1LZ5ZH8OnVsaTFAYT8EF+7Smps
	0KmiRUMx+tFoTHckwFRty1cHcgddrHRk/hFYb724=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5191cf7e-ad7dbfdf-127a-4356-a8d2-bab60067db4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55b041754863c0b1cd112e80bfcdb867b22b064db1f05deb2b72f023e08b33f9
Date: Thu, 3 Mar 2022 20:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646340984
