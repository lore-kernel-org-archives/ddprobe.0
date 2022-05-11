Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15EB17C2
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 08:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652257799;
	h=To:Subject:From:Message-Id:Date;
	bh=2eGOAAEsdtXYAr+mndq8e8rP4C+a7+JkANheqrEa5Jo=;
	b=XD7BYSE+Ylw35ju91c15vtcMvfwc5tIiS4G2MZwNrTjODoSaZ2OcSd1yY4kKAHvs
	NTG4NVqRNP9WMM7gEqxhdpFOkr7gPOaEIHnqbhqwfyZEBblmBKYRBX3CTs0bE+7EZl1
	HY+GJztLLC3TJNQUEhkD/8YZCvrxqF8wzpF6GTPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652257799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2eGOAAEsdtXYAr+mndq8e8rP4C+a7+JkANheqrEa5Jo=;
	b=Vy8DQ5wxXRmhTLP+wixMwkksnYTzaQK/GOy5LnHJEIkjXXK/W8uyF1CAlewIfwHT
	v6JkYcock6D1uY5YEaS1E7IOwrQqdbAqzH703Zs2gSQbRynNz+7ooVslYeD0i/+s02T
	jJ087I9AA+sFlaL71K3UKZ9+FVQxdlwwvNZXDB9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b23d3c66-9ed80d37-f191-493c-9e4c-9b2976d5fc25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9916116d30ae1665cd231ac66e6dad8204c90c478df8cbbcd3bec7778ecb4163
Date: Wed, 11 May 2022 08:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652257799
