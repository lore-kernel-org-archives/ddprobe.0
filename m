Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2803E23C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 08:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652170859;
	h=To:Subject:From:Message-Id:Date;
	bh=aT9HRSdIzbejOpzWTq2lb+imT0RXL+FFXUXCB21ivGE=;
	b=NnmlLIvIAouQACp9W4u5tmkFndnoDEJqJhBCwkD4LJvHArct66qK7kibPF3jwoql
	KU/uGMmC+031K+sLovFgEisPUj3OmlUfkXGbTzAf/OdcisuZAhwn/MILcyZocASR84z
	1uw8AWqfCOOgAkyV6+sy+U6ABEExkX7Hb9NyVgnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652170859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aT9HRSdIzbejOpzWTq2lb+imT0RXL+FFXUXCB21ivGE=;
	b=QA5qdOV4fFcy3KeTkElwI9VR7SgKYXJqF6L49YVhEq5SFXsktWt4Wcn5KbzD3fSi
	pc7OW+f0k1GcRGP6CVClP52B+jW/NYlvYTeLbXHVWMpvW5bUTRYkPffbPf4SHdbUvav
	mszcc0wAnI4on5OEKqwNjDoBu+G0lK8dY29LrxHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad0ea310-62aaea67-1a47-4e76-ae73-358c6fdd6d86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ad0732739d97b85283e9401da16b9fb9211bfc589315f0be59f9c48ae6d24d9
Date: Tue, 10 May 2022 08:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652170859
