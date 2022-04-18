Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1733BA41
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 20:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650312418;
	h=To:Subject:From:Message-Id:Date;
	bh=FFfZqUMnqtK/KG74NfL2wcWe/wEQjwbp9/MrMlGVhiE=;
	b=P4gRSQSycuuh2ByBo1/sWb0FGR65OsB0iKFVSXUWv4BvPpDuajRGEllwP6RbFQEa
	rzuhCkYq2+6X4cu72VWhmjwMQaV9TNz7rK1ifwWkykHWS71oBGkP/Qt62Nyh53Kb0DG
	sEBuKyDpr6mLt8W4iqiheuAgdoScHD1iiBVnuNC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650312418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FFfZqUMnqtK/KG74NfL2wcWe/wEQjwbp9/MrMlGVhiE=;
	b=Oi9le8Izn9TviA/1x6QGYU1S1eQVSeSpB2j7UGQWA0dS7vzZryWwozDehx8YBH5W
	5DnL/7iBJcY/lXhOWYNIxA825WJggH9KyUvnR8soM/zU92RbdT3w2njqMwZYZ02EFNq
	neeHSevkh1F0Gbt57Hq8WQVQ6Z/vQsJj+r+ak0mM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803e4913e0-37f315ca-6faa-4530-9341-f98fcdf50ae1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ad923ca06187502f1b82ee538061289956f212affbdf93b992ea9deeb266322
Date: Mon, 18 Apr 2022 20:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650312418
