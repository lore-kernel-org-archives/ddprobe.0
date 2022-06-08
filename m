Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32897C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 01:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654652939;
	h=To:Subject:From:Message-Id:Date;
	bh=OrJZjlZgncBw1N6oFXqxkc+2FiBYj4off/zQx90s16c=;
	b=kCyZm99uTy8E+0JZ/z+DssEu4nxGgRhYwk2ZlK6oX/FYzrwnO5kyr3s5Ss+VIgx0
	QnJWrFzu/tyiOSYG9swfa86gdI3HkqEyNyOHtc3C54m8k/R5iZfUzivwyfLUyhmkOmr
	ar6d1WCO20UON3wS50ycwXepuHcVUbGlkBuruZ+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654652939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OrJZjlZgncBw1N6oFXqxkc+2FiBYj4off/zQx90s16c=;
	b=EDSJRnWESXwcaSn3Ta48aZXZrVVYGY2BI94t3YJJ6D1fiSxuI+KwWpvK88yTXRo+
	0+sdWY2JBwch3OvGgQEss5D/ljpR8xhDEZ+RT92GN/xH6Z3dhubTFx8vztGkTcK9lbw
	aMGFfrkFj6tQxTX4+Ijn24HGzD3ELiDlxX7lV+BQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018141002bde-c6554d4b-18de-4560-873d-98890867650c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a65173d6f68780824bde08d82718d3b280ba9bbd0baa2438cf881b786c7d767e
Date: Wed, 8 Jun 2022 01:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654652939
