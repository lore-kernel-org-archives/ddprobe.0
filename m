Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B12B7F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 13:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651929058;
	h=To:Subject:From:Message-Id:Date;
	bh=rBhxr1T55gGgpT+eu3sypFxpd7oOP30snsWuWMaOhe0=;
	b=igq5M3JMLPwn7AHZH0Lt4AfkNzBoB3XSe+8MDPlv6e2piuStB2tZdcOO8/89xTb+
	HQsyVHi/Oq7Z9QObjFW/deF/lhaKtVKHzY6qCdi4m7QJWoXnS2Anqeg0hnilvqD/oA4
	4Ce1D4H69RB4Cj1dkHhiEI1kK7T9rCgjNUMh09yI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651929058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rBhxr1T55gGgpT+eu3sypFxpd7oOP30snsWuWMaOhe0=;
	b=houDNWWf1I+SpMvm3GdoPE9FT6U3rV0ZkPE6FHeeN45DcLKzR2L2/+/HADkpKYnC
	PxKtiS06Vt2B/+0lDE1Kse6xd/7QuHLN26EdMM2q0gvVnvPjK2/D/iiUU/HfQlwJlGf
	th2dmDll+xvoKqjsnHXm+d42ReJ24lojFyjWlr3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809ea50bc8-d6931345-d89d-44a0-9499-44c47b51a691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2f638c68f04fdad151b5d9b9073590d1a64a1405dc79cc594c703447155c163
Date: Sat, 7 May 2022 13:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651929058
