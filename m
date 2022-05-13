Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF993D6A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 16:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652458979;
	h=To:Subject:From:Message-Id:Date;
	bh=veZR60+yz+BpCYKPvw+xsO7UEdcPB7pb6NnYgqmq1+w=;
	b=Sljy51rEJrYZ2woCd7GG/urRdaUmpc0oWxhDnFrppWwZZV2t1N7QiAEhfjStS+y9
	5jtDsRGnpPzrH1XGRLfMA6j3Mn1kUfOu9J/T2BaYelDF4Ms4VHuLAyknCrif1HiBBpi
	duTooEXuvh+nQRhhkmxuyxjyZx+8yzakpkxDuJ0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652458979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=veZR60+yz+BpCYKPvw+xsO7UEdcPB7pb6NnYgqmq1+w=;
	b=Tdzd5NoNFTVTB7gS7w+ZsNNw/6RQ6shhFUFXpWx6ftxGZM+hE6fHlDhOV3yk9gdi
	2FvC47+XopSYuCYIV0/fKBYFETa0CF3rr8jxc0vev/PEcexc/+M2phAqZFAiBRZk1ms
	5alNhXfNiSpM5vt0FHv0FGokAJlPjMq2HUF9c0CI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be3afffe-a5bc3df7-d020-4f11-9910-480471f34b92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4f0562b02ff9f92511952a11c56825865e906af2909dfe6e128ee6585ebfb6e
Date: Fri, 13 May 2022 16:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652458979
