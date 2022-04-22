Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267627A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 22:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650665278;
	h=To:Subject:From:Message-Id:Date;
	bh=bo901X+ySgbZrLNCFfae2F8ikGCSTfRaCqImZAd8T/g=;
	b=X1lR6WuOIajVHbyEb8lNL3itweUWqb/tu7jwscNaywP4XZi4Jl6SMGXugNN3udp9
	zK7HKL7ravcEfAYAuitvbiF8NaQZ4R++4dDRE1WlQUgTD9+LX1HywP/ezhzhr1Xnizn
	zOBs0LGJ826wNQkj+CIoftd/9lEI+c9uPawX2h50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650665278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bo901X+ySgbZrLNCFfae2F8ikGCSTfRaCqImZAd8T/g=;
	b=UDR3faB9PTwJABeI7bjuRMDCWMuKgLTsnJAFUGI9FF91WZHm4SWyFcwhOvOjlT5S
	7pgxckHMi7Opz7/Ad4N3pyR1hDC8DdC2PH/zr//jodkDsv1+8KW6U/7hyAWEkfU9n6e
	2tF0j/k3XNBp/gU/ivlWXithFA+j3nx5fNPpJb7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018053514af9-ef2c3d1f-aa61-4c54-b9a1-ac89c9674df0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 740cf287575ce6ad951214f0263f613504d8ab8c14b86e57ab17c54cb01f6419
Date: Fri, 22 Apr 2022 22:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650665278
