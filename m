Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB26C7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659920453;
	h=To:Subject:From:Message-Id:Date;
	bh=jvaWVCdF+z41mdRJOuATUeitzQwXZHwrzutSVbYulho=;
	b=R+lrpY9yWyVK8jmOSWuiOG6nzc61PLeqzlSrTbi/xuc8CCGjI7dRzS3v5pNQBWuZ
	dTTVE0wZd06XTJQJo1aqatRYgoT/JpGHPpSoByd24xC35IwOqfORxSi/h6FSgVvNZ3F
	ZAxjr002srg6aBMwhuVxSzC4mADCNKc3YCXo+weQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659920453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jvaWVCdF+z41mdRJOuATUeitzQwXZHwrzutSVbYulho=;
	b=ONPvVVYyaiMgT3vhvisBAvagr80ueBhPTrjhOBGU92nSl6doL/s/VSIRDDLh/1+G
	hk42q4NnmgoWwagE5CcNVs0wrOOxfdznTfODknjFY/FvGPZqiYMBvXr3rKA1kM0bwCX
	ZYdfTfpq9D5rcCvdT3za4wvlDB8Lfma6WJQsRGyg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827af80c18-5688a17c-b418-477e-9b1f-495866cf197c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 633566b1a7b1cd0a49f1f8c6b6a4c71d2709eabfee89046e6dfa113b289502b6
Date: Mon, 8 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659920452
