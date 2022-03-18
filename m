Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8181E4C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647611785;
	h=To:Subject:From:Message-Id:Date;
	bh=Hz/LeDJ5lVV/haNd4INpfx38+LxbBpLb+aV6U+SvB4E=;
	b=byHD2bHto20BPdxQ5NuapQXEJWnoGwSLpZh5/4cVHeR+icA8vkiU1X10zuqAQb5N
	4H/lJ21Ti+t6KxUIsU1vHRCpmYyRUsX6S1pSZMosHYfEPtbL7PTNL/GGB+8uvvA/UhH
	/o5u2tZGx/XKryptBSwIEcrsD7mNousxTttYGqzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647611785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hz/LeDJ5lVV/haNd4INpfx38+LxbBpLb+aV6U+SvB4E=;
	b=ZtVMIYKPx43x/NiQ99vhIRCoNIv3S46/Rcj2CMb6J7hw0IiKmeubXZhpt7SgE8DJ
	1Q6Rsf/GZx8JZVaekyvC3SDZ85a/mdkvmGeFx0O7sEivsLoPQEWtIsp39mB5xi+6fC7
	V7A8p3Fw6HmDOOluARawUv3QM1x+tNnAHov2GgbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d50ae6f-dbba87bc-590e-4504-a116-577e47d43052-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7d9121313ad24e00e3ade1407eb38af06e714348dcfc9544a8268da37d41565
Date: Fri, 18 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647611784
