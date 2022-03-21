Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F78036F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647836784;
	h=To:Subject:From:Message-Id:Date;
	bh=mb0ZghbQzTN0Vr1nT6LgaUHCAr9Ka71CWHlajEzaMYI=;
	b=Vt0+FFnjr72eqRHJmtYjPoTqovosp3SQLCeM0sy7giZzcn5IyYMD3j2mNpTPs5Dr
	mdWJTvMfU8l+kRy3z/ckChRFckmr4Dx8kipfUjD09Xlp+SlMgRWVbDfp+T+fiBJPyqD
	K7TjTafHc7jmovKd+NC8q55fMobO8qDpGgYjWsus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647836784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mb0ZghbQzTN0Vr1nT6LgaUHCAr9Ka71CWHlajEzaMYI=;
	b=FNi7rxnBmQwYAYU03GI9MsI2jJ7Av+ekTnWCW5IdmS/wUzQe9IacZ1t3PF3Iwnn9
	JW3BCv5WO0cC1Ai1K0X4LHPlPFqbuAJDf1ZSj9w64es7UpXy5WVHE/dnOXzggyU5BqC
	bNcOAjqfUwEMaeNBhhIW31/jeNhUZbdkQVXw9lAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faab9e85c-ad0ee2b8-5589-4386-a41c-be8edfa2b37a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 940d4bf0c24de6a1ff8b0a573be2fbbadd40ce9c13dda284b6f60cbcf1e09816
Date: Mon, 21 Mar 2022 04:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647836784
