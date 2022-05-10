Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D8523C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 16:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652201219;
	h=To:Subject:From:Message-Id:Date;
	bh=xrK6v7l/f2iq0Yq+ywoMCVwVnzzseV/TaBq9O4/HXQw=;
	b=Y+BQ/kUYNo1hvP3zKituXdb0W8m1wWM6sig+9cSl+M+95Vp/PpyYOdNcVZ64FnQM
	McXQRxIHViAf93Osn7IM6gOcJcEiY90tUauU5II6/3gFzr91Z63AH00rvQIzLsPn7ON
	+bbk9G3IMiyLhmA5hPP88JtWIrfr3JGDDqpLlXCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652201219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xrK6v7l/f2iq0Yq+ywoMCVwVnzzseV/TaBq9O4/HXQw=;
	b=NEoS9FhdAn4ISb987Asnw88mHp8HURdDcxd00UcF9pFnvrnfNlREbaeMKWw46ltm
	zPwld287sNgwQIkxr65O3R33u4golZ46qMylMIMYbF0ikhTKZ9CaN7M/eP+O5VsxM8V
	HGHtHT/IESuxa4sBYjuuceXavdnUtjYMIfePj9DE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aedde4d4-7481be0f-c9e8-4707-97f2-0f9a15aa484a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d361584a5c03541c88132de67e28671d92778e51968028ead2d7af930c67fc99
Date: Tue, 10 May 2022 16:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652201219
