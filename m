Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AFEA28
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644906985;
	h=To:Subject:From:Message-Id:Date;
	bh=N/PMysJBTeKUl7JhqS+tp3hFj9bepeZQlUUZjiNV+70=;
	b=J3GJacb+CTeUn4cePgeeFyGd9VVjp0ZVDdXHm5NHAHLlmXQqUauLi0QkFlbW7hTL
	vu4Kuj/Ui8dbhf5DPNIdIG+trVzTP1C39CA6hO8yUX/taF+MWfYpaJjVGiD5JwUJN5d
	6qOyGxjD6TYahBt8CkixQa2fwYTZl1XF4Q8Qc0gs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644906985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N/PMysJBTeKUl7JhqS+tp3hFj9bepeZQlUUZjiNV+70=;
	b=POQSiBO9Buc0TVF+kY1Hg2LMenhD0iv2tb76gKP7Oo0g680bBSV6O7TnR56ODUED
	LVERacEGUOsLRZtGpKZ3kySNV3/37EK0ZdOmnzPJngKiXcTQJz+yw0MwXt9b2z/dhSb
	6T9CFWOALpNuvJg6i3xE7J5+MPm+VttQXFxdThF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc18b5aa-840cf552-4469-41f9-9162-0e3a3ddc6872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cb56f5c67db0ff24148894aef1ed3337d307e799dc588844b1db1d3de1343a7
Date: Tue, 15 Feb 2022 06:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644906984
