Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CAE181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645320984;
	h=To:Subject:From:Message-Id:Date;
	bh=PDaUbBUne1dyHrN/2HwBlyyJRN7nyz6oMXc0CiaW4gs=;
	b=NqHjJoC28YOqCVPNwycpFHy0u3p5vN2paVIWQ++dRU8IToH3hQxLYHZ468rdV44f
	1HD3gmgqK2eRmlfVePhJezgg5sB1fCl++GNgc3gT5V1jwS6SJa063w7qnCxT+0QiBfs
	4VGwqk8NCgnFSYYoSjfZjF5pbEzBCk8c6NoLiK5c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645320984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PDaUbBUne1dyHrN/2HwBlyyJRN7nyz6oMXc0CiaW4gs=;
	b=B2nKegBRu3alOkcG55+nruxZ8uX7t/2CO6HBoco/XlZT1uOAObGycl0G0AEUlBmy
	OvpVKUzJQ58djLyJP6en2EzVJHHp2sQ/5XRgp/pFzxNSLCM5UqxmLWOvLoTdu8plnk6
	/IomsqQAdbofh0LazoPDifFD2q15sCj6ZeOa6Vds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14c5d89c-7baff069-99d1-4c70-96da-10df45fae598-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f28f22b60b4edc9ac06fdacc39a97fefb2dc673578f859c33863a89fe3f5fe53
Date: Sun, 20 Feb 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645320984
