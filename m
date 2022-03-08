Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA6AD7A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646726485;
	h=To:Subject:From:Message-Id:Date;
	bh=xs4kegFGIzcntZtFjl6IyG0c/g4HcS9LNEIQEYQ3oTc=;
	b=cHFoK355Dl4IVVGEiqJCYcsppUbjkmDJfw1XepM86xdyYTB/KGOIWwwWDh3dINzW
	r9ZfjauM97c7VaW32IiOMbac49UiNQ69H0HSW5QbJW7mhl2RHYTByw+lOkBItaRRfq4
	vFq1DSVEonRvxUZ8OZ5hHMkygAfaGiUcV1LXpIls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646726485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xs4kegFGIzcntZtFjl6IyG0c/g4HcS9LNEIQEYQ3oTc=;
	b=UKGkuyV8bfFap1LshCWnUdlowQ+25hlCjHpq6sYM1ctZh8k9HCe412BmFN1vuSrW
	nS3nETiJbD3dn4y6Gq6arGNVo6bYFCEGuKG7Wf6jwWZWYFOMWd3Udwsb3yBGT43qvBg
	eNrWp4gDC3cqkKCknbt8wN2FYzVttpfz9wP0I7Ns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f688c131c-15255993-956b-46d4-ac54-6f29cf31814f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c785d7aa333a9cfb39ccd7a96d08ceab5c4a85b642239f5c9ff7ab676ab52cf6
Date: Tue, 8 Mar 2022 08:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646726484
