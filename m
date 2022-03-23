Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422FF1865
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 22:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648076158;
	h=To:Subject:From:Message-Id:Date;
	bh=RX2+1AS9AM6kNaXc/zq5wGo07zItrhlGuLPxhdk1cXU=;
	b=S2XkbyIaqmo5UZaU6sRei04BVYyMTYWwsFfUXp2TyQDI4kSu2BNlhNQYH864w2o1
	eHaKVT6tDGn/EBfM/DemKeG8cXMN1wmHzN5RYjxf/BE0v7+Ha4h8sbrFAQM0JsV8FOn
	xh4dgdWpVlpyAzVE2fPyVFUd9sKNX9oZ6uE2vd30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648076158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RX2+1AS9AM6kNaXc/zq5wGo07zItrhlGuLPxhdk1cXU=;
	b=kkdJXunoAuLoVMlj9VmlMxZ1qOEOZQuHudfXErXpHBWOc7GC/OM2nAe1vAXWuIn6
	uec79TmPZxX8GqbZvhx4dLoLuwqK3PIJQtE05ThSm6BzWezvG3BHAi+g7m/tZLvv5B7
	SyW7EKRdmpj+dbXwMBV82mBzPW24IlkT6+IEE9rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb8fe7557-394f9f5a-54c6-471a-b75b-66b4cee4a4e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 361e2c10a3478a450aea5f5a3a3cefe527640dabdf3c5da9dd265df89a9acdf2
Date: Wed, 23 Mar 2022 22:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648076158
