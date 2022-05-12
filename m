Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB0B17D2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 05:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652332499;
	h=To:Subject:From:Message-Id:Date;
	bh=ISuqErgRggW50mmIfIw0ZGAFzQFgK5Yi5f5xuB+/tcU=;
	b=Rn93bhxWIHK7Q7QA9nPTrgIw1IqlMXwzLALqP3WsO6gudkzOW9xBZkR9XqPOevBI
	p+VH4a5EEdVrANiyJ/R7dzgglOXuDvgqdPTPheTyUfLq1auF6CVeVcMXkXUsuObcaaU
	LFYgHWefA5DWSRvMx1pFhgUYsqVwLA9Nvh2QhBBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652332499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ISuqErgRggW50mmIfIw0ZGAFzQFgK5Yi5f5xuB+/tcU=;
	b=ap4s+zua3HPwx1gaAk+8fneq4O2URI6UXreMSQlPyyF3XqTPIo6LJ0ogXk+MtZHh
	J6avI5WPZGuNI384L1F/CNqK2YyboCPbtGsM8O6OTeIEnAoKIUGl5YoM+NSBjXBvDiq
	8fH2m94TZMebulszyoJsAuSC8wCTAu2fgF6Ayzog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b6b11136-53d4c494-da4a-4345-a150-91da42a654fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2ab9b2d44c1ac9eef8b8283de59503cb230bf0b60cd4f842e5c2d6751302c8
Date: Thu, 12 May 2022 05:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652332499
