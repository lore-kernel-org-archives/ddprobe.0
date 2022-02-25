Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36117C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645803085;
	h=To:Subject:From:Message-Id:Date;
	bh=FeeGdGBE1E1SZ4UBDgpVv62fQ4lM7eGeuafrxHXs7Ho=;
	b=Nr5gXtVrq2TtdVwJvF3N6AqhVyFSAobvDWvODoZIr8BnO0YgQ0ifs1GgywBMxqIa
	7q9fwV4b+E2a29N1Er04XyNW29bUj26m6gcIO6a4JNzTlOAn9Yzcct+4sPU46TKMEP+
	AhrY2bLN+kHAJe09O5jbRX48UNYXvS6Mlb3lNiXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645803085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FeeGdGBE1E1SZ4UBDgpVv62fQ4lM7eGeuafrxHXs7Ho=;
	b=ASkvtmiGSyGBCEmZ5xK9u3InBqNKJoUFNUvpgRDQ278ZXShei1ZqVSH4hUVaa3Zs
	m7UfSR1+Cfvyk3bDBPTj3D7Ls4d9el6LjpPrB82mu791VGFJh1uoUBZ0iYOT7VLVa15
	Tlb7tKJF0XKVyo/hxqBozHO55DXj3tTXdsSDZ1mE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31821bee-70e97c81-23f3-428b-9025-ff879de36545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 410ed7bdc9cc79f257a87c911f92e558c3cbc5ea734333d74b32da1688ca39f6
Date: Fri, 25 Feb 2022 15:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645803084
