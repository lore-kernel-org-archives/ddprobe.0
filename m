Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5568B10EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645756284;
	h=To:Subject:From:Message-Id:Date;
	bh=DVDeZ5544FTQxQHagad41najOTARQE9iQVfCpeXb+O0=;
	b=O/u5aM4V3+xMTAQSyl2qlzVfCzs3v9EWq8ao/S6fo1HbYARTrM/Xlpyo8/SwFefl
	lKxWTEDREmFAngL1C7CEzhmifH0UgoSvm1W9LSYBf+B1yGCDc9J60rnZoQ3qd+ej0/x
	UYPhHzFBOtheeq/bNtpE/LMu/Gnd46W9pIQlZq9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645756284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DVDeZ5544FTQxQHagad41najOTARQE9iQVfCpeXb+O0=;
	b=YYlBWVtUJQrpzXAiy60UWUTuN6mkP7JLwXn0MUdi7DxYlTmJNdOxZ6iLcjxhkfRB
	5NVHbeL0jFXJlgJQ6GQ0IWjFysM6BvWKUtjtjfYhaRp907v5JyHxucZk98mzRwhTFVm
	UjsREpzwdkfwWH9fwjRwYxb1r+v6MA6RZ1Os47DI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2eb7ff4b-afda9918-ca47-404f-9eb7-1d7045c004dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8f580ed824bc766421b166533f95a020e93effd0ae83cb5239866a9e18749f9
Date: Fri, 25 Feb 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645756284
