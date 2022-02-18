Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54E648D4
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645186285;
	h=To:Subject:From:Message-Id:Date;
	bh=AcAn42jdxTBoR9eK0EKYNGJ504I2EqtLTEdHlIasJno=;
	b=bAZGQuf0l2XwyTBjmqwASg+daXCmP4m/UOvm0aeN+0/b9tsogzIEI8iwWG3XXTqe
	uJEvisA/GEHeIzctqMs/OlNqbJVn7OVtoSqLuRKmlBIobDUgRwSaGy3IGGTCiYEspWO
	HpHY1drBxxi7fVGqYQwur7xv7V8SDnEIW1MZHtTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645186285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AcAn42jdxTBoR9eK0EKYNGJ504I2EqtLTEdHlIasJno=;
	b=B4PE0dkIPtIAN8H9stwewRes+UFlX94Gtjbe9DJau+s/22V0HtmHC1gDh8gJjIo9
	ML+FncuHCaPFDX2dsj6BGUQjMnDmUyOl/VqC2xak4+iR8nhUKRIlvY7Dw1CKlsxbWUd
	fKPXCuev/j/lhIZcNzG8Rlen8LY8p82eeZxbXzXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cbe7cf9-fb4d521f-48aa-4f36-9c8b-29652f32d615-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a88ebed7fb16e98e0c963d637c16257670890c04cc9b57e4670139842784cc8d
Date: Fri, 18 Feb 2022 12:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645186284
