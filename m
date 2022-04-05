Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC3A322F
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 22:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649198938;
	h=To:Subject:From:Message-Id:Date;
	bh=JlYZAnhJ8iZD/UUOotQb5uoiVVTigZ97yBF5zXwMoXM=;
	b=cZ/PNgnwJjbDoe9KLtsMMnwp9Op64/L7n4N6TKcdUVuCXAQad/hMSaiML2eihuP7
	LrE6oc0Qv3zbIAhgliFJqubLoFV9Q2aK/dFKtgIdM2qCFv7ba3O2Pom62bhzzpwpd9C
	rfTDUP1MVfh/Nqp8Og4s9RBXgG2aX6fPH965LC/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649198938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JlYZAnhJ8iZD/UUOotQb5uoiVVTigZ97yBF5zXwMoXM=;
	b=QDA28p6jomk3FgoHDAt/GUVxsA3q+X+d43cbX8V2Y0R5OPQUtjULEOpzYNE09HZl
	bdcOo+kzwZ4HMiqnr7W7ctxEcqZObOwCJj0TZ11dakqAl89zNqDFQWYXeK+REc5SbFX
	qpqMX1Dc93SYs/SkAiJUnJOQ+Ejj2DZrWqaooYy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffbeab8c2-0bc57f12-3971-47e2-87a2-7c91bab2ce40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 389f8d074b5355553ad11687c70ed2da7ab092b410f818552eaa583ebe12185d
Date: Tue, 5 Apr 2022 22:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649198938
