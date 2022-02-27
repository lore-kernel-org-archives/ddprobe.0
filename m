Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DE73FF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645950085;
	h=To:Subject:From:Message-Id:Date;
	bh=eSB5ZtOzHfO4b8gGZaHLJfXIur8Au0jSuvkMWP84CEw=;
	b=TDaUn3PaazLnX5c7xsI8QCJDuioLXbLcFaOOt/+3AuaOpcLnLVe2xBlZSNhyoHPp
	VUJHzACH4OuutvnZoQhKsIVvhQlhKf7iPieZcX0I3A9G1VzpKzR9W5OrR6RTNO56vdy
	fOUaO8tVdYKN9wCu5iqs+MvVMH5fjnDg4TpfCHuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645950085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eSB5ZtOzHfO4b8gGZaHLJfXIur8Au0jSuvkMWP84CEw=;
	b=S5TNYSCO881tXK9JUn+1Ct/848LD1BNaJaI0BThH/cn9ikYUIef8Gca8LgFOci+V
	9ieHe3fx9KhsczJiodC3RyMJWdhlGhjpyOLieWCE1wowr3obGEZ0YCX3dsmBoxrd4y9
	m4/MHgh65QcxRtOD57pZHOHhycGftL8FuoNYMLlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a4526bf-fbb7e87e-d383-4e90-aa87-476ffd0d85d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70fc05b53ac49908c2fe6f99c140fd7e80a1d779602bbbd83b2c5b85d8695635
Date: Sun, 27 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645950084
