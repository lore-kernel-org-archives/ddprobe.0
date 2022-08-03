Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E6B649
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659537052;
	h=To:Subject:From:Message-Id:Date;
	bh=c0DjkyMzkEY0a6TYlr0rQT8KwiCyZtPhUU6kgy1qWKs=;
	b=RizN+vzF5JmdhcN00oJ85/Z+II4v101go2Wi/rTUSldaLvQyueXP8SV8OSiF/MKu
	vWUjK1pRshyi8e22HHedHq1Epspw7jrJ90fdACLBrcr2EhkEkUzyHc8jpUZt64jfPdQ
	ZKCm55tw7OGeAm7nc8NSp9XfIpStAeJ5hOkRUFQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659537052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c0DjkyMzkEY0a6TYlr0rQT8KwiCyZtPhUU6kgy1qWKs=;
	b=NoHTbH1lwYa3RewFEsdk6NzSEsuS9S5A8Jx84Oj4JxLzP0TX9VJ8OKU9TZkAEncV
	cAmLehbCtDzJ0ft4b2/f1y9PLvvfA5cTK4zmJg7pDZHwu9EuZDnTwIzvbEqtQd3IE4c
	Q2M8X+nK39sp1hn6E4XLbJPqSUWzMJV2GPxIqPA0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182641dd385-810fd1f8-e507-4d40-85a8-7d99a70d9fdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3a2fa710078802a02d9308e684a74e390ad1d2e572fbd2164ce44bd45a62b0e
Date: Wed, 3 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659537052
