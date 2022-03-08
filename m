Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC022F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646770584;
	h=To:Subject:From:Message-Id:Date;
	bh=JuaoSNE9uv8KlBu3a3XLZXMthGd4PzQHA2A8NpLa4ts=;
	b=bvAc/+LbeHb5rvsfhi6BZLrtTMKaw4MH3oc/ZG4v/t0R7ZEP+UnEpoAkwYQQhWJd
	BcyCsJsArHTw9Uyy5AemHYxGqSrgDtbKj3P49xuPKNwJ/f/5VKgUVig5V//dZyUrTu2
	8RiRPZVcqkUuBQEJhnmtDP8BkGRd8xu/1/bVovzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646770584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JuaoSNE9uv8KlBu3a3XLZXMthGd4PzQHA2A8NpLa4ts=;
	b=PDcrq9W/ypf4gE5YuA1u38mIOzE2Xpcmful0easpJ7o/SOZFB5ujtenJjX/V/zPx
	4FUHyrFPfsyrbxaaqgCmEexh083h7SHxprOQAMKNyCue7OdSF+0fCVJrvwUY3rq91i5
	WBykHqQ++ZjptkHAsiPMcfocsv2KrzvGH4QS0IL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b2cfcb2-05017b84-035a-409d-b5eb-cbfb96b25ec1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 622d368533eac666230d53eb196fc4acddf5af02ab43b88c24520c80f7a7a550
Date: Tue, 8 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646770584
