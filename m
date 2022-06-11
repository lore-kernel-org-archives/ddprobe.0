Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96E47C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 17:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654969919;
	h=To:Subject:From:Message-Id:Date;
	bh=auXjos3IboXmojWwcIcggpI6w2rE6zplU5ZU+kU7zys=;
	b=cOANpOfDd5KXzAEiuaBPExvPgAIwkQNVL9PL3xTBWNoPDmrIzJQpyrOKxZ1vz97F
	DGIhZkHZexkyMA69xRAUG/F7g4Y8v/CJ2QRLAhBCnmg+XiM73/TLixxmPPQap9yZiB5
	BCr7vqfk0PV4+VKaKv/olxmXxN/LPCEZo+FxHVOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654969919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=auXjos3IboXmojWwcIcggpI6w2rE6zplU5ZU+kU7zys=;
	b=CQpBCKZAYCvS237ompf0BNdV0MCRXee0nh3TiiGb5qrfJJPAGklEn9vCHhg0l3Vj
	MDRhJvzMJGwd+UjEulsIwPwvXtqsjaWMQ89S9eh4ED9P1inwKp/HKqmMI5t+DAzVn20
	pp569KZsyVnDtc86MXHARfrcxJ8ItAZDO+yNtabI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153e4e6c9-7cfbf7b2-cdf9-41b0-bdde-cd12c01b14e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c457e34d051ac01f4085fa541e628c62047d5c6a6fdc6afd28fc2623784ab0b
Date: Sat, 11 Jun 2022 17:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654969919
