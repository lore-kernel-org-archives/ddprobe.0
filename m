Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCB01FA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 02:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655261639;
	h=To:Subject:From:Message-Id:Date;
	bh=43XXAYF16Ty2TEC3LieSJxQtkOn5ttPrhxIIwmc9G1k=;
	b=JJ548KNDjaofpkeN/K0z51nLUgRn51Jg1kOqhYA5UQv8PBh4rxo769i+OJneaw+o
	ddEmWEAhS1xEDZZ5SOE65+w29K3RttsiUW7fLkbcMrm2VsoOeKuxnfBuG75eCrGkeC5
	gthVBulwG+ql/ufABsNB5IZuxQkw1UIj4Cmw+L9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655261639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=43XXAYF16Ty2TEC3LieSJxQtkOn5ttPrhxIIwmc9G1k=;
	b=iZ+2bVA+bsDYh4iTlzcL/1dorp3dY/ZbnOVy7uepXbYNWpfOTYPoTFR3evhpX0VA
	3+NqWtjgK3uUmXx7mlMMV6SG4a71owfI7Gd8dbibe0YzmJHSBYGJULjvNos/kSKCtNW
	iECqO7vShKIjb7icuTfsgTem4e3xHcIqNySKh6fU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018165483281-a17af584-50ba-4bab-92f7-725ae53bbe6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b582159b52533bb0e92f201feef918250cffe68439755ea0dc45bb8f3970034f
Date: Wed, 15 Jun 2022 02:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655261639
