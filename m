Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868BC7E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645513285;
	h=To:Subject:From:Message-Id:Date;
	bh=k+qjkBZoouZ9aUrIUQnMsHVer/FDpQi9NBdrc8DjYiM=;
	b=jEMKbqAOmFE4dLk26SzyqLvMN6smxtTa+26abS0KqQ6+P6OtEc75cKZZh6rNZFxS
	U6HMeh+695NUnbhDcD3OdLDwgQGlC3XBocFTXt+qLlODNKh1MzbvDSuSMAki9ws2ZqH
	PvBHXptbhV3CZFo9DCTkdhiMjj1EdGGiqJyYxuz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645513285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k+qjkBZoouZ9aUrIUQnMsHVer/FDpQi9NBdrc8DjYiM=;
	b=ijSIHYlDpv2A8N4xj0viS+iIhlsk0uMyQQNoJUhRjYn2HFYLrNcjUubiBtCqIXxi
	1aOZvWI27mX5kZu+Yr0m/Oxvo+6gCWQiX54ydEmEIeFi9qs8VrnfoiSxsT3KzHneS/Z
	UKAlYLVY3nAzVLVavRjH5u9JGU2f0EXS/7pvAyAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f203c1c6e-6a7db982-07a5-4bfd-a0ec-b376c117e33a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de11753cd9055b6ef05aadd5f4472b758e26ddc8e35ccd0f3731ab4655002ac2
Date: Tue, 22 Feb 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645513284
