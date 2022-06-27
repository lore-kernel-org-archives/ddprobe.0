Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF8517CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656291412;
	h=To:Subject:From:Message-Id:Date;
	bh=F0Ayn5SvSn2dv3T1O7u0PbmJkHQVBWLI+/ZkE+76z5E=;
	b=Rhn+objldUIRITh5kVgdCcMkOR/+AoBW2oHfmjvxkK5Vc25EtKa0bdGabajPYnYI
	vpIRLRQXeF3PCYgdFIO3KAKddUVtUT0uWRmDr3II48/zbAtTmyJMJkfqNtdz/gCWPGg
	v3ffiYXDe0K9mm5qFlpH2QZFYndgO9sS2Gwb5D9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656291412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F0Ayn5SvSn2dv3T1O7u0PbmJkHQVBWLI+/ZkE+76z5E=;
	b=A013R40zHdz1cGXvYjc+EASTBQy//R5gRs9c6cJAj1lqLHxPnWxasaF4Y+FGckAn
	EC5STFvVEkWxWjWtLlANqKOBP0HzwgUrWDYAIpltIS9AeY77gVaVWfucJ1kyZbtXwJB
	teOjSJ6j6Fso++rZhc1Y8GHvTzk7voLnsmlNx5sY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2a94958-2817e9e0-e626-446c-b6e7-029383796b0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eedaef4747f51ebb38b3324daac77376238c73f173444fe387ef01857893aa22
Date: Mon, 27 Jun 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656291412
