Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3256A7E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656554812;
	h=To:Subject:From:Message-Id:Date;
	bh=ugTX3vSjwR5NzVI1CQUswz8w+S8FAx5Q+ueNaDp/eGM=;
	b=hA1iOc2OfdjGVGFUQmQjASx3VI0XFVH+xSXIeyrTqMkSXMvYFYfgbw2b3v9S+df2
	jks8LJKuJcM/S+zOfDwdxwCIsuwdl+ye4FWXQVhSLLTjt6DhLGesZQB4mMhxRvVfjqH
	Yh70HH/fxBj2aoia+DEw7Cwwm+WeD1NHfQIqxeqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656554812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ugTX3vSjwR5NzVI1CQUswz8w+S8FAx5Q+ueNaDp/eGM=;
	b=P1/XLP7kqierrgwgiTA6o5YA6lRfYVXP80Kipjx+Rxhi7qGqVWbwRxpAnV9oA6gb
	bGuZcy0P1zTHWq1PEsrmybDH2wKuwIJbr2ROLcUSp9X7hOOl/dcx3dqs4RKBl19yf7Y
	01E3zrDniaYOt0hBIwHDr55KlYa7xyfmHD3El0f8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b25c7387-905c914f-8767-4cf6-a1ae-93acd05faa03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43850cb11117413f5ee4a6b815b00a182a0185c948a19a9f5695cf62de08db5b
Date: Thu, 30 Jun 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656554812
