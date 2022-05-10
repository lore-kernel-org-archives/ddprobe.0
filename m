Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1F52C80
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 19:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652212019;
	h=To:Subject:From:Message-Id:Date;
	bh=d/ITCTBqdH8eAwLre68SIexxOzR9b42s9QvcwMuleVo=;
	b=QYhKH+tSQEIZCQphz3w7Vgu4Zp4+QlH/eEYrnd3EJKflTwDpebljDKCZq8hgINgG
	8zni9LB391rKj6ZX83u5USy5eBmiWPN5D+IKUB/Ejd8Smeu5JTQQM07neAgowQrf+Fj
	f4R9mz9Xr/haGN8/mfuE3fuojX0OsK583n8Vpvj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652212019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d/ITCTBqdH8eAwLre68SIexxOzR9b42s9QvcwMuleVo=;
	b=GHFcP7KoqRn09TW63de7OmJ29Uw2YmjkALmbJy0Ei9EbaqVVsYjeZSxsdkFd7M8I
	7vMefn3dr0rMMmpjXO7I5oWJ8kGaEU9885pisz86BU0nGJMuGWxQTTQ/L9Htgwd/WLW
	A6mgcwzqQwW17szY/XmrvOnddtEvx0gMmotYF6iA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af82b05a-55dbd79b-15a6-46c9-8698-23d30b211cc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 984040bd4fa357f354f312ae103011968feabbe8063cfcda76a010c4ad08ffd0
Date: Tue, 10 May 2022 19:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652212019
