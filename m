Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649B2193
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660869652;
	h=To:Subject:From:Message-Id:Date;
	bh=s8YIXXqJgAPx+Ha8ynMISZYQ7kOYx7YV3tYiJAoFlUw=;
	b=XnOguZPfm4WXLkuPfG1REkKl1X7zS4djnFcDV99Zu4tjs8KBPj4IxlT5MXdjiUzo
	BhCSCPM8nNosEWn+jttD5Fbs5P4mViJL9AeiaOVvy10SeRjUCc7qF5KW/LsuWhuuyit
	xoYUsVlqDOqycu7y4zff81ZZJq0eMQ2rlpD2WE2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660869652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s8YIXXqJgAPx+Ha8ynMISZYQ7kOYx7YV3tYiJAoFlUw=;
	b=cn245TxPjA45CarsFU+pSwr3IH4zfXGotK+1vvAA78Wp8ISLpjjv+F2tjqLCWG0S
	YY7+t6DEnSHT7kVtzaWOI/WIVRIMz8H4TMUe5FdqvwD6Bdrzc65LaODn3PoCr19SggD
	x9pCI9xe/JnV/8uTHS9SrI2IlJNjweRBwAC45poo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b38bb03f-4465f308-08ec-4941-948a-74f7182930b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99e86e0b571ad8ba75099c141083338807ec519c2717166fb70acef0184ac764
Date: Fri, 19 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660869652
