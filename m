Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164DF3D99
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656947812;
	h=To:Subject:From:Message-Id:Date;
	bh=smt6j8p7JuUzYKtbCKzeMghYEWgmpMCheKZvO4Qly8U=;
	b=j+V2Efj9DARWDeZ/BC3IUWlqQxJi1tRI/TBDXNgzhfW2DrzSFYLdJhxSE+XkzuaP
	l/LW0ngwc23HJlaLtLs8jhgVkZoHAkeeGgkaL/Pfe3EOQKWMeX/M8XcCeocvu0ZsWtR
	v5wbNMXsDSPX30rAxi/ivhCaYH/tplEVsgBCik/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656947812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=smt6j8p7JuUzYKtbCKzeMghYEWgmpMCheKZvO4Qly8U=;
	b=I3V7x/M+MptBhH/YO2Tyi0Z+Z441j0AeEtckDziGI5/2h+YkJslRRpWRuP6Qjnls
	bNUOaNWEkKnbTf0uKXRmfosn7XbU78rj9XHHVwiiWwHDQ39VKyz6tn1yzLLYqkTH1NK
	o9I+gW0i1x2ZTN9/pzMhs1R3R7OBh7rKnzS1ZGwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9c927bf-f37b9356-f9f4-4580-8197-7176dcf57f81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c5c0c7eecc08990dcddd501824b0dbf37ff9964998425e4d6d11a42e716a8d6
Date: Mon, 4 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656947812
