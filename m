Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878C918D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646935585;
	h=To:Subject:From:Message-Id:Date;
	bh=XNH5udRlyAdZX8r/HSJ3PM8f2uBameQkENnzxge5YAU=;
	b=Uu2DCu5pNemiJ20mpC37NB1/sZHKcBU65gEXi+2En5U22/aeXXUOQycL9ZVeUnwK
	JoE5pO3zg0RM6ct3cvVF3sn/uyuGNSeo7L5hoG22BXgw0y4LDdt2RVK7D0EXnfy1oAq
	kFM3//kaZFWdZuFiVROmfbo13cQQmrNbFJUAkXUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646935585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XNH5udRlyAdZX8r/HSJ3PM8f2uBameQkENnzxge5YAU=;
	b=V8pyfN/5VyN5N3M8GVPYaK9f4yeXo13wzXbR9lADbzj92WM4uXvsW29Ir7k2kQR/
	eop5m5cgAgzBDGOhPyOGd0Y+anIFX6LzW8jxNkd0g3mX8VxNZsEJIADKXM7AA8ymLtI
	/bG+vuUpbArIukub6/MGwqbIpN2MBeBKVAjIerpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7502b06c-2bdd679f-9c96-4c06-b6ec-b9170be00ec6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d239be57086e7e0e6bb05a425389af038eab32b7fe3f4205e7b0a2b4da1fb7c2
Date: Thu, 10 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646935584
