Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59261FC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645012885;
	h=To:Subject:From:Message-Id:Date;
	bh=QsXrPLzYSF3QudovTc1ezac8Sj3olX26QewbnhmVSqQ=;
	b=E7FmmfwQjMWh/8mSz0VIlW1YQnEsn7di1DvWkvWM9tPLoNKw4CLyPg281qAdh1eM
	vG5ysm5z7SsjYvZMlII5AOvOx/n69HsFPXXhHai0fx3oLNsvGqJKg2k+9du2lVrme54
	THZj0fmKPk8pEOx/L6Z4pSlpKGgTj/2pJmW30Nu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645012885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QsXrPLzYSF3QudovTc1ezac8Sj3olX26QewbnhmVSqQ=;
	b=M9oR22KpI7lWK9VfJ0GYpUkQSuIGvGwqJuS2u2i1hlwqHgsXNQPeXlOwRvb0RFwN
	bx2OAosTk6Hc4bC3VcWByB5k57IPhGmqLmiTgV7+JdybRT3tlWZZLUbqDKwWPX2LlmF
	iV8TVh15Lai74ppsbUa8VtWrFqZKZSR/G7pinrqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02689ce1-31865fe4-2196-43e0-9767-235dd3102faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4794409634e86e9a537399d39a9e8d7dc40baee75b78ec8d35c2adb0df716c46
Date: Wed, 16 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645012884
