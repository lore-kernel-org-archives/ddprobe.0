Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54982116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644904284;
	h=To:Subject:From:Message-Id:Date;
	bh=NPi9/gn+wiLSrAOV5lfMDP+CRvsaCrqxfBn14l8oiD4=;
	b=Cl2cMLa/13nHuO0yJl4NMKRhSZ3JK17I4I8ZLVODSjwzOyrxCKmWMqR8+Zto6TKf
	azuwRUXLFhub2kAJUuftIfko54mCiv25ZgzGe34Gj3XzidY3sc9LD0+mJllW7Ybnkxv
	JALxu9dKm0qoAHB3p6ESONGvdMbcVAa7Gz3XA5BU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644904284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NPi9/gn+wiLSrAOV5lfMDP+CRvsaCrqxfBn14l8oiD4=;
	b=Ssbpg8JQMWaZCfraD8IPlR+bqfezESzYyh9hUsszvAj+26oqLE07jmaNIsg4bx96
	WlSJDgqT64Mz/kI2moXVM05IQjI2osVH5CTb3XmDSymp1W++M4z2RMwbAdz1HaqhrzH
	5gBYkpPP7geW5bVM1BcJ1Bt4eMB47ob3irp1T6a4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbef8231-7abab7ca-e4ea-4391-99b5-5dcbb9f806bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4233fc987ce4499508f01b4a7951277da25aead2a3f39ec0cd947b2353dff9d
Date: Tue, 15 Feb 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644904284
