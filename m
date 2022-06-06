Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF36023CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 10:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654512359;
	h=To:Subject:From:Message-Id:Date;
	bh=Ucfv/sssvtCLkSfimHHY2ltntyxOsBPBbp95XQhWbf0=;
	b=WBiNj9PpEs6hldR4TNz7JDP4LaaRj19jo4VmOJJa3yHCWqRB95GEBaXpZN1xUqcu
	So9gBGUsRXKp0ITzxQX3VuuktO4K3WKo8iaTpr4G3DuOKBknvbXn0yeShRQPEFo6Ko8
	5Mh9heQnzM6/IQ8uCMSQX5rwdhnqQTCg7gjxLesE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654512359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ucfv/sssvtCLkSfimHHY2ltntyxOsBPBbp95XQhWbf0=;
	b=L1VGOzRt8uaz4L9NnYI8M3E2qTU4VzJG7Adg/IfhTJX+UvqI+J533hvhNtfZh8O1
	Q7Y7fin3p6oaoLxjDSRH+GydyeTDrfdOgOf2Bxm/SpmQvPm9JoV8mjsaz5sY14fmiHP
	bvcrdQH5g9n6+oo+/iaumqxlC2l3GI4k6oA86Ka4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181389f1727-b088eb18-b517-4f61-871a-f352eb17fbd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d5d500aaf034532c862c3c16ddd7fd503a951c6e6a0ff59e73ad846da27e190
Date: Mon, 6 Jun 2022 10:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654512359
