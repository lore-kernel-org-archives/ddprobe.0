Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CD823A0
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647353485;
	h=To:Subject:From:Message-Id:Date;
	bh=RkLnEzKEpskyrHOZRxJyMuz9+sO+inJs9vU/9ZSqRw8=;
	b=VNqZw/IQZQL1lN20sU5m7jBM8X1a96l27ky/Ew+r7oBXuedZPGLPviG7Mu9zrwXB
	76qgMs/bIVAN2eFBIEAYJzbtXC2Syh3XI2e8GGcYejZE8/Jd0SLVNvjuV60rtzxSCQa
	bnTRZ9CopCaDrAoeMWyvYYKxtSpj052vHGkBYogc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647353485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkLnEzKEpskyrHOZRxJyMuz9+sO+inJs9vU/9ZSqRw8=;
	b=RZz3BmNbmIoeoAUqtn5KaJ6RQ4OBnDIhUNarIK8f0ETJUPOJBXpjhdljHQkLmX0J
	58ppYM/uFeggFqlfAKfUJjWe+UWLLFfHnIZPHqbQqKwXTUXQA3+nxWYpblvaXi/qw74
	4yXbY4YEVGOwq2+bfuHoKn0q2VPEP5194fB7UeFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8deb5602-d19f991d-bf1d-4ade-8dcd-6c48efab27d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40acc8ce5c8c4e6b96675679c4745cf64ddd27b11d61c3ab6a6060b9e3ab17ff
Date: Tue, 15 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647353484
