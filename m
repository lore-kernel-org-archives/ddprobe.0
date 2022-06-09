Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9C02F23
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 15:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654788119;
	h=To:Subject:From:Message-Id:Date;
	bh=oERXKS91vZ0XA/ld6b46esK5S804U/YKSWdUd91mKyc=;
	b=UTeXsQg5n1/qB+u0hWye017R7pbaymMTjxZ9L6ef1FtQVfIHac4RY3b4j/q3Ui9J
	xEmvL5Hc693ZvIJGchAQNm0SyyU1LE8JY4TRI04cKaxttKaWDZN4UkLvl2lkslCq56x
	F/EthF2OGhb4OiavzFhpy5L/tLbKcysKirgiuUWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654788119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oERXKS91vZ0XA/ld6b46esK5S804U/YKSWdUd91mKyc=;
	b=K/YHIOo7Rsxm3lDBY3KNEXelTUlDXkHZNlq+WXjfyoJMD/GOgmtqBZphc0CPJR9Z
	XZg3xKpvWMWNFNtdtGUFQLFsLWCZpF+SEIjshafGs7vBfbGgfDobYP/+SGDg8Rq8Phl
	yJO4jguJBWvUvDgER1uuDi3M1td3XjKOIscs/Cn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181490edad1-2c82197f-491f-4855-8283-1d5b82eb8a6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c42a9a513767709e44ab0845856a76b35b25b7c7c8def4d1350bd61148e74e6f
Date: Thu, 9 Jun 2022 15:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654788119
