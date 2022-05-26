Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172757C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 11:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653565919;
	h=To:Subject:From:Message-Id:Date;
	bh=H0fCr2SIL2ulslRb/P+W7ZBVlJOvufe2bGwOJ3BXads=;
	b=URkvPh/XgtNWzmOzAlPCdFlzaKV2/ZjBznHIuj/9XdBmNs9+ixfXGVTAmQIJ97Aw
	v0Qxbzl2eiMb1zusAgjBnaO3oMk4xtS3dv2H1CDgeST5AA+Z32Lf9A/HupwQsXEWoKj
	3Fr9aWa/AVkdnrgUn04/Un0CStq6N5u+OR0xaQEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653565919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H0fCr2SIL2ulslRb/P+W7ZBVlJOvufe2bGwOJ3BXads=;
	b=Pg9EF4M5aqf73gS7PlLfpKElD5RCj5d2fKMSIQ9jCojuKQl9wxkljgB9EKhSy91s
	boWPh3fB1eotJK4IFCsZhmxChm3AFFAlg+eztY9iaIm1i7j2RoKdhz6r//cT7wN9qCZ
	AF4Td0hsY82NV9s2r0J22nhQNhCWLxju8owzn7b4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100359015-d827b82f-9b24-4025-a349-c7ea6b18a6b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60118bd92ef613cba5279a7444f9209d41f7f86c1e6d6644ba54f4f0edc6a583
Date: Thu, 26 May 2022 11:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653565919
