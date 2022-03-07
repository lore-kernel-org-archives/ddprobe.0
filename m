Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5EE7E
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646672484;
	h=To:Subject:From:Message-Id:Date;
	bh=roPmzOjK6bGRWrw7sDVziEGtqi1HkfyicERENq4miyM=;
	b=Df1eEn1Xv8eigYmNUIKQVb1HMvWcor7kf8vxnUSDgZs+MLWCAw/kIiQAHYjbboEu
	OyQd5Jso/uGQBXWXdBVVvJQ5f+W0Q08O7RahDxqrmlnZ43eRk+yHdszMPAv/qVb/0NY
	KSaTGX6+vC1NiFJVYKG5XOR3KTF7qSxzyct87GJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646672484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=roPmzOjK6bGRWrw7sDVziEGtqi1HkfyicERENq4miyM=;
	b=TauKoXxD+BHdRb61FVBeqaoKNYBEkQwNsNBclhJAMZGlDB3RhZJk2qGlcrR+hgeD
	XLhPsGQ7pBReh1+TrxtW4k887VHuytkgTW5xL9+Kg9hf2V4Pztk+tDd098dboGKUa6w
	u8Y81U4GfSMcSfEuD41jf8AeSLFAbWBk4j1SqLUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f655419b0-d6c617d2-4ec9-458a-a0f2-a9edebda8cf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42e7209fe810f1adcbd2613c853e87344b45fea49ba2bcb75a8fafe455c4b9b9
Date: Mon, 7 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646672484
