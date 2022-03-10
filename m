Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5786F5A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646947884;
	h=To:Subject:From:Message-Id:Date;
	bh=GsnnWNZKF/MaCedz7x2WdsM4vg/qjLOfDEDQTwacNT4=;
	b=X+4EddX03vdKc7fBwOjhPCbRm1O2OoDk/frPs/jZLIJusC1/IVNfpP8VIHZ4N7RU
	y7zoxjaiidf7mADSlk6BGiDLKKjg+HgDoVpv9SITCTJfTRY3WL7i/alhl2IiY/a1Fcv
	VJQJoRjFpRiCeUCgbN+ERUqpZxh0/P7L97IPLwvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646947884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GsnnWNZKF/MaCedz7x2WdsM4vg/qjLOfDEDQTwacNT4=;
	b=GhJmHKd0Q55Y1lK1HB/Nxl4vB+d5CtrDAVhJSCHfoBKez5oQ+q6e7utq+v6iLpsh
	jis6QHE/mclYMT+JFb+pxggy+da9KxYJ9n4FfeATJ3DsT4Zb5cwqXC9NfpepB+fsE7C
	RkjjULqjMgtEogTf68P8woObOU/rnsheGj8Jqkc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75be5ef9-13ea53aa-0dff-4dcf-aa5f-320b2a3ed5f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2031e94eff32bde889ad3db8bc263f0f4404acf70daa05ff177c2831e4d563b4
Date: Thu, 10 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646947884
