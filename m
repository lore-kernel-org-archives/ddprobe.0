Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A182428FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645815085;
	h=To:Subject:From:Message-Id:Date;
	bh=xqmt50adbxY0zcGlpjZ1mbg4axp9j6i6QssaH8vL7gA=;
	b=BRgnmIR0LEOhnDvkB+P1Azf+ToHwKZpVYcfDUW4y9RU2f4RShW3RHFkyuttd8B7s
	KoPm85bOkFAHV6bv+qR5sHE7oCreUuJ+hY06w1ov+A8PbPw/vLZGPYxoJJzmPVi1o56
	UpXg80LRqAVttfT+AN7rHaPj6LA5MD7aOhFPhQhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645815085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xqmt50adbxY0zcGlpjZ1mbg4axp9j6i6QssaH8vL7gA=;
	b=YgzsoHW36Z5Hdk6iJ10cA+qHDp851KR8ggUSbGFG/4yVpFXkUyigvis/KvEz/9E3
	YUPJUnumZNzC/E5Fkl/8HkFKuJtE9xsknkU978nY3lSm57zsudbcADAT9VsaJJveB8K
	/VSGDFg//R/aJEOBM4sbm4SzUvLhTwBM1v5mlOIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3239374b-f47175c4-e9a2-46d9-b1e7-976166f4e9e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5009b805c5a8e5d7f1f6c539d278575f0911333fa6013de4ba3f3f03642dd8e4
Date: Fri, 25 Feb 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645815084
