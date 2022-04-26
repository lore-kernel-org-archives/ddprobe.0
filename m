Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083A07E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 01:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650935698;
	h=To:Subject:From:Message-Id:Date;
	bh=Ng/7lHkiM0NOPq/0WTYMAtKc7SXJocH6F5RjPUhjUpg=;
	b=aiLbbqHOyDGlZjmsaf9aVwoLCLbQVDHV309a+QARH06qa8bF+BIF4/eHMxzUg89Z
	+Q3tDd1Mak/2rAXDzj7gMbOgqxPSd1Q0kQqrflI7Getd1TAXA0nPh1JMX3kCbQMGAUX
	B/RDaDLmBKcwGgfJvYT/6egrJG/aqnlSEZDQr/NU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650935698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ng/7lHkiM0NOPq/0WTYMAtKc7SXJocH6F5RjPUhjUpg=;
	b=I2DUnFJaFZftTXI3MbkSHxmAN8006OWyAF0eDZllp1d3ClBdFld+ZK5eCWZl/2Xi
	3+6uqKOyInvZf7jrpKkQkG9WgdFRAKgeW7NuCOlr2a/I7ALPlLdOqH0m/F8IT1FMpMF
	81+y29H4OrNTOZzQtx3KwSmUrIumB1a5r2/UKROU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180636f93b5-c17cd3b3-81fb-4af1-9220-3722a4e45d0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aa68856845e23b3ddd7b53cdf6d371ec07c45f84eae4de58a9899a871da39c9
Date: Tue, 26 Apr 2022 01:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650935698
