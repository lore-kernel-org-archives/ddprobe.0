Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7607A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646070385;
	h=To:Subject:From:Message-Id:Date;
	bh=OuIXgSvfTrwNJTjkfMFGoHfvMA5ZWcPq3R/m6WWDF/M=;
	b=k9bDvo91INb4bIv1QZhGYF/WCVAebG4ixUNt8xDN5dxdBt3vP+RVbVNRFNYraW/q
	b/VYZYr+12GqtOLWXwe0DVRM3KKn3WbHOmCdkyf/k7k2nEAPOh6RnNiulR+PRKObVEg
	vvxyg0lrawo4BnloWbyL5mnymotDlnDh35N7qsKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646070385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OuIXgSvfTrwNJTjkfMFGoHfvMA5ZWcPq3R/m6WWDF/M=;
	b=UmMKAheqF/szmzdMMfsJZmp64lFi5i2gFCkyg1UxBDS4Nq2Md6ZF3UHQ68ZfjwG4
	myvEeDhNlToyw0V8pRfzr+t8jeWrMfxwvdkHRl+rIn20vySQSjzLizzTJRslD7iXmNS
	5biDxeQdr1ug0D8cYw9cOuwVd64e10YYcBsdNXrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4170c885-45a8a3d8-015f-49ee-ac69-cbfd3e480fc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04470f68db47b7f1a549ab59be0db218e6c72ae49a165ceee84d0fd02bd7b54b
Date: Mon, 28 Feb 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646070384
