Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911DB7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646904384;
	h=To:Subject:From:Message-Id:Date;
	bh=ufGwyB6o30OZY8Upvl10zHmR3hv1SUzF7V8iCXipNNc=;
	b=huTva+0ygsKmc0NGinMCiE0hNAVhc8a9q9/YF53CHcxbr9hK+KePsdRtaEilsmXb
	o9dgIR9nM6iwH9hWzitrhsAtA8u3xGOjzHZtr6EULMn3ax4zprAYZvm9XmN5nwQ8wTn
	6ZFCuLzsoh27M7YRyc8/GlDyDdB31TH7iYors0LU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646904384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ufGwyB6o30OZY8Upvl10zHmR3hv1SUzF7V8iCXipNNc=;
	b=N7lYQepZYIGLo8RfEa21G2bxuUkHRefqZi4ZBAhCwZVRSm/7z6ITO1Z/d5X6yAEn
	tJsefcD+oXBoOdrAyvevN0H3y3VwswGSgz+IZgVdz+iJhi7Fumz8w0l5OYYnion1bR0
	9jazJZRdBOqrI62eAmAPOJKl+f9PTXEwbxB5d8Bc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73269d1c-9f3f1da2-7a48-4c75-9931-c1996a3ff9fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54e523452fbf7e437884385fe6f871a340ddca6ecc6dd1719575e7e6b56b086a
Date: Thu, 10 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646904384
