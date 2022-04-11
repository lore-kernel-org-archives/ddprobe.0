Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3FB10ED
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 05:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649653318;
	h=To:Subject:From:Message-Id:Date;
	bh=mCXOofy2oWvC461/vdt4+FhGs4xIrAGRipwWQJ7zejM=;
	b=WCHXELeAOfZ02aVD8DkDQqmjk/tW/9TJU4TURv2NDs0/0uHcPFCv/rBt4PTe6JHa
	/hfWeE3RzxbQ/+W1gKgYTjl9cLs1Vc61PKHl8urNvb35/C4bM5gBwP2V6mhhmO5cclL
	CbrTpekVB1evdUN8aQjP6r4ybtl07ZHgS8JHKpDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649653318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mCXOofy2oWvC461/vdt4+FhGs4xIrAGRipwWQJ7zejM=;
	b=CmMfkRIUHJBTEPOCso73PSDdZ1Sp9r2WW+Ra+2WbD9aCCelPLZa0Qo+YvHVZBhnN
	e+DJrLpdxHO42qNoWlPM93bFK+i96hH63uSOFXI2IbhEd74f4c9+KFs1II7txADsYbc
	kplc7Zlhb+aj8LXS4p6LtRESEKdSa9Qb9xKBZQ3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017000298-b733bfd4-0319-4169-8d26-ef51e91927e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b09e15d80c66835b068746e4c32c96a144f8aa1c6d4341bd4860e732abc85df5
Date: Mon, 11 Apr 2022 05:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649653318
