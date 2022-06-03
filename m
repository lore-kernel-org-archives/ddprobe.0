Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF887E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 21:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654291499;
	h=To:Subject:From:Message-Id:Date;
	bh=Nr+MKp+WLyR1HaQA/zlILzGXeOdiqWhU8HYKTeouke4=;
	b=lUudwmw9JkHGsbsID+55dxn3HB7/tSrGEDNPZdJ2nr2L3dYXCAMB+qpbBIptguMD
	BkQ3DQeyySiutH+6dPp2x4k0tiqxg7HsFQfEPFn8/YrWGAj8z2dyLLSZobTdIHZFbCa
	lGPQoK5EvVtODV+Fsu44daGszNQPNX+qmmtg9/2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654291499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nr+MKp+WLyR1HaQA/zlILzGXeOdiqWhU8HYKTeouke4=;
	b=JVZd2j052PWX2sWAC7GmxlK0UAQ+V3LvzRjrfpaamRtR/r8k7Hd+O5lByiUqJR8b
	pjGXqhEuDaU7QY0rMEA6Ee/74w3ND41NXztalJL/2gGK9tu6IBD5plGoyMwUX1Stm71
	IpIPkFAsod9VIqsHY9XqXz2ahXdO+hSS8ySqUh+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b75090c-9e1f65a3-6546-402b-9e21-8a10e74ae682-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cae7336d53296bdbc1942ae1d53889e8550af100343e47172694c8304ba0c4c9
Date: Fri, 3 Jun 2022 21:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654291499
