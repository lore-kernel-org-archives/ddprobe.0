Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997D123AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646577385;
	h=To:Subject:From:Message-Id:Date;
	bh=/PdtywXY+Mk1VusI/pfR5RU1vvYILeV8lemvAJz4m7Q=;
	b=McwsCHZWPtuDBmMbTfk+tmBxKc7eUPp4RZESHh7ZsapR1m43ZnqbR1/wU3VywUd7
	F+kletjpqBylxppXk1vlC+FlsGQWxOMi9IQfIlxyiUwupAlYKSVAsKzGlZ1H4DCheYj
	Q14iR5la/3VqcbSPrqUfJTWWW8m/17p2w3iHhLug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646577385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/PdtywXY+Mk1VusI/pfR5RU1vvYILeV8lemvAJz4m7Q=;
	b=ibOoFSlS8inPdNYLukdY9MrqXSwQDuPEOo7bWHzr3CH5Pbcfeo8G0dNaqJBcsqtx
	3Ldlr1WJFlk7ddMa690VnvsPmKnArvNOID1c0ar3IGJ9ZIs17zNPfX521S3H4fi1+8i
	h0jVJrdWL5gAolbEWWNoYwzkBpzJcVxyC8U7Q5Uo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5fa8fd65-9bca773e-9352-4df2-bb7e-1e77161bff8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e578c004d50deb9b3b44f9c0c985e0d04139bf9416fe1e14f81cde9e96ae3c4
Date: Sun, 6 Mar 2022 14:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646577384
