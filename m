Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546CC7E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647190284;
	h=To:Subject:From:Message-Id:Date;
	bh=FYaLDjbitGvO0cmXPpmZLOLcv37+NyfYEhruktKwVYI=;
	b=D4wq0ao78gf4ni1VXqkO0uVJNAYy8ooxdgPbWcu/9riUoPJcavs5gzfXsdWnfN2S
	BAGjwWAQ7tIcCbxxgFVNJpRuvAqYEvkSB64uqpoIDvjxDupLvb95RgQmW6rqIrq9Vue
	Lr20cAt45eZXyuKsobvaNM0BZOOoJrfRcgGFHuZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647190284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FYaLDjbitGvO0cmXPpmZLOLcv37+NyfYEhruktKwVYI=;
	b=FD8EGIbS/SQODleO6cov9AIpRIBo1sFWbyg4qNU0xVY6mhFskoGX+zyOp4WxEq8S
	iRNGOOWnqg9yuG+jXuNedfFwRdV90WxFiAHaMN8Qg44LgUd+17wyBxFBz+42XQ8iYQB
	WxAONdD1JbZl+GrAkGEOKx8BO0t5k3/QBkM/QDgY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f843119ae-39dc5b24-84a9-4e0d-a28d-c3ec19649316-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f7d1ad56e42268fd6b05299442a3557a3796c158252dd507b4518aae6ebabd6
Date: Sun, 13 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647190284
