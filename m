Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7A67C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 22:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648504978;
	h=To:Subject:From:Message-Id:Date;
	bh=7sh0s4N0fk+8ZCGLde8ktliRYW9/wtvKW+rH/ViqmIk=;
	b=ZZ+CPGNytTjsk7oes4w7g7rxWsMDjx0Uw+tMu4ryRmG7NzackmZvlOHJJjBSAVJU
	mx0rVdbBAA5nzA0LLhMhFneGdje3fWH8R136j637LCZ60GCxsxWcOyHdKif8ix+z97r
	5jsG0h/JeK4IJwj3SlBdBD7pK4Uz9SdZlpZeTLt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648504978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7sh0s4N0fk+8ZCGLde8ktliRYW9/wtvKW+rH/ViqmIk=;
	b=i8+H8YOrvaOrZDx8+bhKjtjZiB0oAE9wxQnGRvAb7Z7aulnOiXKl81FCKQk+opdC
	2KDwm6W0v5kn0oZUN+qDMQ//fWZmEfSS5PsRdL339E7UYWkne7Usm74LTf9ViWiFX+8
	hAibWVAJbqi65EBIah1QKFi6/R1aN5v8Jj65G+LI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd28dbb97-0ae8e2e6-c8e1-46da-9fd6-3008e9116711-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1ef4d4ceacaeb39dad96c070fb1b79f6627e736a44235f9b31b94d92b364fb1
Date: Mon, 28 Mar 2022 22:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648504978
