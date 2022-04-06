Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002D07E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 05:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649221918;
	h=To:Subject:From:Message-Id:Date;
	bh=n/m80/7vhJI5dNhxn016qivcSedmh8x1PAcuh5XC3Ec=;
	b=bG9hWmeZsjs2GKpnW18sdv/oE5q5mvUOFTcnhwe8y6muvmEWM6RfAk67AjhSAehf
	AxXOqwEH12viHpuzVbXZ+TVmOkIy9s+m46NuBbMpPlcEBAKRQfWRprZbNPnJofGHiQG
	qVVnW+5sou18KmyVjItljFav+EelSdZWxm80V250=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649221918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n/m80/7vhJI5dNhxn016qivcSedmh8x1PAcuh5XC3Ec=;
	b=QotqG73tI5/T2lILMEI2n7eQVSwegUn2OCNODo0jYjlQTTUcjqgAhuTcxpFU6y7W
	xY/tqQPebkqNiIHdx0+8GJ8+qHfn6jPrrdzSbxin7KfRkVqTLsWRGtOnsbcz3waf2e9
	en/i7+DyTrw/oxddkqN9Dyd7JsUFgWqVjjMI7NGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd495e58-e221fdf4-7ae7-4f48-9ce7-04e034cd128e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5904f894e1a8bf9595d0ae3c8075a1c755324696856f9957ce619c5308a48ea3
Date: Wed, 6 Apr 2022 05:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649221918
