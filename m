Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505C57E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660402252;
	h=To:Subject:From:Message-Id:Date;
	bh=mlVItzoT153op17/5NJbd0BMjx0+5fyFAeeI1A+d3ws=;
	b=ag4RfBvWtDmwVbCre8G/QbJhifzSLUTWrK/MyzR4E9s+SmAVJJ6FAWydsQM8TvQ/
	DSPwnuDvp9/8FNcjUAvotDFPRcyPfkp1W6/0ca7aF3kLV7JhU2DUa5Km8nMUzB/C+NY
	K9fvsQXKlTjTSIFnTSGW1LHqwmdRIZSHxOh1YyAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660402252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mlVItzoT153op17/5NJbd0BMjx0+5fyFAeeI1A+d3ws=;
	b=HLHnr/SOr7aFYcr+gpTdnO7p2LMUgVbyv2cghk6Ni6iw0Fqy38/d6nr1KslKTJCZ
	kjmn8F8pt05HHC0JNbudfv7EYis+jpXJue+g2eCtDEpIhmSFlgy7aB/yh8oUPZ4TE8n
	i4tr5hcZ+Fs6zFsOss18mAOeW+jwFXrk18sBZ1eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297afbb1a-6f5f8485-7c48-4689-a4dc-435373f1bca5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70999c6683340a7c20cea497ae43835ab18683e30bcce59352e4047eff52d7c6
Date: Sat, 13 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660402252
