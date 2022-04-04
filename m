Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256BF2F21
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 13:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649077738;
	h=To:Subject:From:Message-Id:Date;
	bh=AMYzBrZQdGCEJjJvFh9Dxdf+dXnBzgU/fKlfQ0E95xs=;
	b=OyzoB3C7amY9hq0qEn+Rjw6vrawcMKlIJaZyQj1hh6KX0nyeM8oZgqbokknkEVAn
	mZ2A3oLaDTZmFNwdfdJ9h00E6nnw5ymXa9Br+7kWOyh/m/ZIwZieRYmLoJvrL5dtlZ5
	eG56V29c72Rr/xuonvkS2viVtameX0lLv1hVm+qQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649077738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AMYzBrZQdGCEJjJvFh9Dxdf+dXnBzgU/fKlfQ0E95xs=;
	b=L0Yaaw4vmRHX3yqJdYE2rFOnvn6loDa0nvBAtxpcqo8pzIM/tXrv1zuCNfeaO2M1
	NDzN+zTjB7zQuJs+GUJYB48Zv/OjjFHMk8stLsNXydzUP4kxBrmjfr1dr7efNQVGm3d
	HWTlnXfa/ntK4Nt2mpKEDawtg2YfGxsb8P0a1Pyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff4b15b26-33478537-bf0f-4925-9d07-3e30c61d3342-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1d440735d23337584978121ff46edf62fd4b3f4da68b2155ba97a4f2f36a667
Date: Mon, 4 Apr 2022 13:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649077738
