Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8887F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 05:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655444459;
	h=To:Subject:From:Message-Id:Date;
	bh=EJEscwR/13F0bZV61rezlkWlzhPa81duCjnQoNEVswU=;
	b=B0vDYKmvNnc61ydz6JzakJNLgNElEGMU9SCbPlWRJZN/AefH43P+KUdM/rkgla3O
	XrjGXt24SXFfAEexyF+epmukVn7g5PKQ29J1/NIUGQu439Wq/lvojNBqduiHEwj4R3Y
	aMMdX8TrONIDTuIz2FeANJOzOo2AkvGoI0WEsXqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655444459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EJEscwR/13F0bZV61rezlkWlzhPa81duCjnQoNEVswU=;
	b=BthuiVcWeUHgFuNHHgwgUdgcC7xg6xyTf45uyS+ndRwZd383rqkAu80CjDsXx2k4
	6yz+Sqm8vatXjkBbFpOZvbje5ZUkpRbxauWsIqyZ6I1t/y85UPCibbLQaDW7joapq6H
	UZRBSwswynic951h/YQEwkHhb3ti+qbk7jQWJ8z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181702dcf15-e1f84f0a-dfc1-4857-8484-fb6f07c080af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9afee4da99a74680d761b05bbcd027dc7045edad50dcd718da30fa2d05d815a
Date: Fri, 17 Jun 2022 05:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655444459
