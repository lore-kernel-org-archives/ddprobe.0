Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E0DA44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 08:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655798459;
	h=To:Subject:From:Message-Id:Date;
	bh=xy6Z91kzo84NZaXDNcjgNaUszDgdLk2S1tbIu5zX8L4=;
	b=k1w6KOIRYG3ZRs59wqMY4Ef5+vdmh/GyGnw4SZY4Xjo+KK3bkr4LvOT+NghzhXwz
	QzjR+G3K4Cko4I9voINaovfsz+riLiNKkTdOwDOwavjX7fpuHMcjbB58r9r0WjQUb3M
	4cy3hi9ATfpzGHc0v+lEOr9fJXDT2qPsE+C3b/s0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655798459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xy6Z91kzo84NZaXDNcjgNaUszDgdLk2S1tbIu5zX8L4=;
	b=bpm+R6SSY2OQUxm6fPMy7jVwcn3YIR3lMze/rbA/gunzs3dPcwkFj4WNChBdKJ7R
	YlsccaS0oTnoGpdOHF0IlD+rfdDHmpTAVOJqVwoJUE8Rc+75mnKh1B3TzV+hsqe0Usx
	HZFF/29fKXs6JHExupkM0uErOpte7w1wy2lCEYLQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185476b94-f8b63e25-0580-4be8-8f17-afd25bb4b8ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 020acecc6399f71e2369aac3869dd65469217b8bdc7f7df64c1f5b2b10e165d6
Date: Tue, 21 Jun 2022 08:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655798459
