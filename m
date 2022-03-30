Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD5D7B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 16:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648657258;
	h=To:Subject:From:Message-Id:Date;
	bh=TWVOSgqITqqwINJZITdsIneSXXOxRXSUoL3WMs9HQpk=;
	b=JsUQP6ZqAn3WDPLH/DxcScJUJ8vP90jh0c/ppFw77duwu2Kf94kL9IsZqLLN3t/5
	QShiOoYXwuN+b/3sArXQwysd8GBxW54pNhrRqmVnJg9/TPDcvHFYe8zh+F9UK9ZjJiN
	8fsO8aOXM5roYzsbXCloex6Ep2caOO0aXOqFjjRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648657258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TWVOSgqITqqwINJZITdsIneSXXOxRXSUoL3WMs9HQpk=;
	b=bTfVr/cmfDikH6l3T8jzZdLRfXLiHQPg1y311Xm5YEh4v21dleHpcVnEiZXX2wtV
	MHb7l+AEstSDdWW4SBb99fvQiQqjc2ZDJNs6v17VNP7SfCie30eEdRJKCWg9bcFu/zw
	JvwwhgVoDu8C1+ImOrmQ49zFoeJOgE5br7tt387Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdba15762-1bd264c0-6eb5-4ab6-bec4-9cbaec2572b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ce107ae737b2f69bb6655dffdd01d311cff1a17b74700a3b307c0baa7480809
Date: Wed, 30 Mar 2022 16:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648657258
