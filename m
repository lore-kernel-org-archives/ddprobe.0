Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653761B71
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646521884;
	h=To:Subject:From:Message-Id:Date;
	bh=ZFqRt0LQ+QAVdtHpnQ9g8EwL6D+SwZVdhLoHmQ9mVbU=;
	b=AOS9BwOr7iTFB8XnU2nEU5L9K2DdlVF8ik4wc8WTsswlYEgEKAwSwbApbeMgy+z3
	87Me4BnIT10WDL+ZBRLqI5mHYdrgrckvI97eksF4MBilmjVHlI6LvV2Al6f5lCpunxu
	9QkWl4Pb7CkbCgnXi/PQr1h1rg5mBZitLA09EnrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646521884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZFqRt0LQ+QAVdtHpnQ9g8EwL6D+SwZVdhLoHmQ9mVbU=;
	b=PpVJ6BCgSoEcvYHwdP3Z234aXbVx6QmeVMbFO6UlfBWHun/a+n1PefVRcoN41Dsp
	uLawA2AcQdxnEzaZjeGKceyNh9y52YqxNnMUNg6h4njljYcF2jVI2eOiHC9l2I9drwY
	MQSqNBkrTJX+Umdmvo6VMxxCPXdGSHya2WVgfv1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c5a2046-924b6cb2-d737-425d-a3b5-5ba69780c9aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ff7c9746080d43ca90e4b154a02bd46b0c383ad52de1ecb00b95bdd1efaffef
Date: Sat, 5 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646521884
