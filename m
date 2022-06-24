Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182B9291C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656082012;
	h=To:Subject:From:Message-Id:Date;
	bh=uf3KBhPnuJIMMIouLuB0/1FQY/fDeEGjjtOqBrmKP2s=;
	b=J40h8T7KGFOZ9lPQ5Zs2kjiQYMp1Z1ZHIvQhR4HcRFJm7Xb9hdWgwxjwQgKOqsnw
	4+Q+TVp5db/vCzNnk9JywrtaBg7RP8ExZR8HG5ijLQTUHph5iMjSuAp08tl2kt7D3g3
	RpPsmaOa2Q7sXK8jt0g9uJfogop9+1lb86wrO1Qs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656082012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uf3KBhPnuJIMMIouLuB0/1FQY/fDeEGjjtOqBrmKP2s=;
	b=cw2ShIsSRey5dqHMwDzo/trjRunKGB2GPRvJKRpk4hUL5LHJden+9IfZpTskmXxH
	eYsLHKo2lKe+HxEi0jC61lvVRMTF3G45na5zB10UqngFblJ2cumtiYfmo7K+jZC5EOF
	dhDsucD7C77HBKPrkh5zVmLw90YFoMrXcqXENWbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181962e18d1-041a6de9-b03d-4ec1-921d-9946412fdbf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17d8c91b34d4b42f0bfc2235b4d98570dcc6e63191359026bf766a2cc371f916
Date: Fri, 24 Jun 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656082012
