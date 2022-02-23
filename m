Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8487B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645609584;
	h=To:Subject:From:Message-Id:Date;
	bh=jGwXU4K3DoKULVYjkx+s9ngRuan0Vd0GK8LcoMXavzE=;
	b=TPqISneOI1dRnovKNV0gncWfueOUzGB6Lk/YWS6pB+Lhr6BkIxRmx/b7VI2yGF4z
	oJ5rE0EYjYctyZux9IGr2L0ZALP7DN2Mk/UoBGGWZm4fgJnnzuXeCpQkxLeVtyTk2C9
	NSbky9ZgrBj5y8W+mPVmugZo8kiExyrVQSXa2LEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645609584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jGwXU4K3DoKULVYjkx+s9ngRuan0Vd0GK8LcoMXavzE=;
	b=EbmyHvq2rrOUUI87OVBXpktlVbFh+mf22NfXslHUiFUQxEKVcyskO3Xueniw9Lmt
	W/vmu02WlfX8ASyWI5QirXZOMVm4ZBzsHeHRcDSyvtTi56HdC+h08bFA6gNHR41Btat
	U/DV7mqAQ7IT06eLW8TTQ9KxVg73aImJSOY7bk0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25f98866-3c62b8af-daf5-47e5-b751-8afb3bcf6927-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4b98ef200b55974ae7a5da3cde7cc93b0f9317022b79620235977872fcb7399
Date: Wed, 23 Feb 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645609584
