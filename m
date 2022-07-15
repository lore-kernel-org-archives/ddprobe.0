Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE1C20E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657870012;
	h=To:Subject:From:Message-Id:Date;
	bh=dIsey1slEc6wvOtLMjw4Tu+C660fE2nvWjdsu7laKrE=;
	b=kjB9B0AOgQOHSlL0yMlmFpL/k2LStNRMURYImbSpudOSkqBYNmH7Ez16/2GP8gp+
	3TmlhdZBjE/kxGNc3ALj3jBinoI58GSZG+xGgXQQtg4ZBTWGqZLKIkcUhr6wGPuky4Z
	96cpFheV388P37quwmqc+njrPB4wbVtziw8EjHf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657870012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dIsey1slEc6wvOtLMjw4Tu+C660fE2nvWjdsu7laKrE=;
	b=BH83eNj1IMZ/4wSxmZfqiH7AKHdUU/j9DG1R4fz489wXX0MmU7huwaUmSeoCgor3
	ZPmp64oX38UU0D8ZNZaWW+vUc8hCDv0LYXpuqlMjZDKyk6FQsoY9dz0QufilvqfOmsc
	upnSp6e/sHEVs1UGggZIQ9a+l3GK0qS5AthriQfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200c0cfb5-8a2edf42-4080-476b-9686-d21f327af2fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c159ed70f8420da2664cb35948a0ffd296a977f005fbe5060e40cd46cf32408
Date: Fri, 15 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657870012
