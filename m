Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72947C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 06:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644735009;
	h=To:Subject:From:Message-Id:Date;
	bh=AJ90+Zrmp1OGiiYD9SL3XnO8eZ5/P5HZ8BDTz3pSbHw=;
	b=gLuq7wljamHuZmDiNpYun3/GYBW0douf9DIhL/mJVeTRO9XQXL9XaV/iIO8H8Ct6
	nckHlWdBhjbmOj2X6xuAA/ckCwoUnYW03CAJepk9qZYm5lMExlzPwthQJg7yX/dojpm
	plVNX4UfsUFvn6iZD/yvBWryjv33z0Fw0legZ/PM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644735009;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AJ90+Zrmp1OGiiYD9SL3XnO8eZ5/P5HZ8BDTz3pSbHw=;
	b=Z8dwIRlmYHiU/ek/C5fpJba1hNDbkQISTLNJPts4E9XPdlGJHxDpBRx7n6juo3zK
	4knXf7wJ+6eTRvZQWgupjkjSxzy3saXBxHF0Ej/icPvXoelLp4E96WcR8RZR7By2nNN
	9ZDror5fK/iUbBf9j6hUo2QMTW7eM3re+A5AfAO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef1d89162-2ae1d288-ff71-43e4-be43-aa18a5625743-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dd035e862bee6d430c7ce45efb8457cef3db6e22244c887004480c97b3cab02
Date: Sun, 13 Feb 2022 06:50:09 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644735008
