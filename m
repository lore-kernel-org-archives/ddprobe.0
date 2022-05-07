Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C607E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 07:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651908478;
	h=To:Subject:From:Message-Id:Date;
	bh=Y0m11BzX4lzr+d9S1A45QZPwwMPg2W3gWFj4QDKkifI=;
	b=KM9xkHPjCqjbDDvbyDdfa0ysTHIK94etpMbJJbkTjxDwDHaSUhTj2eXquKPaEyAX
	2RsFcgH3zXXJfTtsjcGr0o3g0ksKsnupGjsF6IE4J+DYyu7b1hklC+B/doWomXCx+Rz
	BMC8bqdQ4NkExIEVdEtz5FezUP+IqUCJegNaO/H4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651908478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y0m11BzX4lzr+d9S1A45QZPwwMPg2W3gWFj4QDKkifI=;
	b=HiSE4Bg/JgnPcg49XybG6we7j2GXZFfpsg27oCmFqCL6T3HHFgWUyZv31Nu/qBWj
	0TVC7zqf8ts3HmYXmk/3eLWLUoivRWbY/5uOrRnoluK6cWDe9+yrPevgiV0DeFgszJS
	SrQLSE3hx9VqBwA/t5ts5eMYSNcxo5OEtpVFroVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d6b0582-15c83532-f3ee-4671-8a0a-19d86e95cded-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1614e167323cc660877842dee448726ce15b1a5645ee9d7a60fa235444d28b9d
Date: Sat, 7 May 2022 07:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651908478
