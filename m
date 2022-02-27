Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6452F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645927285;
	h=To:Subject:From:Message-Id:Date;
	bh=E6IKy8spa+EPmUrhPb+QUsfDfoLH7aQOOr6C8T26xG0=;
	b=M5ZN1AzGA01TG4/REhDMgSklLADqIOaB3XQs5TdCI2uco9k27sc7EuTNVtEAVzzE
	FpYMcIpAzOLoGAQDL8uGqVBMZPmUT/NVVZFhWTtkm3jnkZOoiyQ+Jhyc/T6K37HxbIM
	iM0ao6zn1OJjhqPBw/4W37oNxcABdPNMTUNeHkf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645927285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E6IKy8spa+EPmUrhPb+QUsfDfoLH7aQOOr6C8T26xG0=;
	b=XnNFihlOHCM4lNv56h7JeQwaA3Kt0IsiVPmeWK6HYibN53SRD7yiGVVZDwQyxB2B
	VKMk9f9q9pGv/StLQ4nvlj5UL2daSKhinJSlnKUDHAHzPXZwVc4j3LCDdnipkjg3iYq
	VS3z6IMdNeU/YmvHqdzWcDW1ZqSsjHk8UmW2oPs0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38e94057-a45dad48-caa4-4271-b9b5-185c53d1d8ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d49894a867e944a799dc37d4fd05eaae96374b21e3ca5bb15eced73efd2a9c8e
Date: Sun, 27 Feb 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645927284
