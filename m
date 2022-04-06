Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECE218D
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 02:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649210519;
	h=To:Subject:From:Message-Id:Date;
	bh=Pajyz7GWo8lm+z8qigwztsMuGgftM0EOfnGYWNev4mU=;
	b=YYc0vCb5RiT8BNwwci/1+WqXfh5vXYzmSZpeqs3cNPWKBDq2+srNujU07H3IEPAQ
	7jvGCKyA9OIGvXimJu1yvD8BURvk1zO8VpA3jv3yvduTgwOfA+jxLfVOmVP8R8JFTdo
	3+tPKPVWkxgxT+uhMi5YFRbdonDrz9zOaPw0qQoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649210519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pajyz7GWo8lm+z8qigwztsMuGgftM0EOfnGYWNev4mU=;
	b=KvOF1QjnkN/Fm1Ntg2D3lVCs/e4WinrvR5N+1VpEsrEbK6ppEqytvkmUjk+tXujv
	u+j69ie41CofvTqysKIEZ80if+XPX6mJgLBF1QYJSl9hA/wUtiH7LTbshqGQL8q78fp
	TGQN9nJtvPOXGG07KW/JMSsmtmglSeLMk3umm8aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc9b6b0b-d617bfe8-610c-403f-ae7d-6663d65be248-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b819f2e9e459e3625d77a220f6a20b5d4aa147ebc23ce58ad0f1cad691dfef5c
Date: Wed, 6 Apr 2022 02:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649210518
