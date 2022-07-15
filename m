Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320E85381
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657919812;
	h=To:Subject:From:Message-Id:Date;
	bh=u+6Ucq+dhoTCswggIjiZ4BJi2nCUAWUxoK/Bt8ODpNU=;
	b=DiSaPgFNAmHXUSSPvNQ3l3UEJYx0Vs3qJOmFtGy9EQQhOTpZNXAba0DnUlMPWgO7
	FQFQsVIrFWZivCKkbXWD5+/0DjH5am3R7feY2q7I/ySdIg2Lqz3z7cDmlQz+lL1uWB2
	e1cvzm/JvyVWKm9AcoNUoExNqpdS1iCgWX5EYJ4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657919812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u+6Ucq+dhoTCswggIjiZ4BJi2nCUAWUxoK/Bt8ODpNU=;
	b=fa6Fvki/AxFLEQPxpi2erprro9BeZ/GLXes/WrSiIgJJpnbrcE53GggLjVuKVv2T
	eKQvLK+D92n6intPUtHzHgG+fHh1pV9fJWQ6Ywk4bkNvU5lGQfi0TuPTW4Bdp2P1kMH
	BP0gh83pGlmlqoBHqwfxtFfpUXLsbhE421KzY47A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203b8b31c-61403983-cc19-4662-96e4-c68bccd497ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 310876d9b77df527a571f2aff4b3f03a52988b10486833d9222573bca1fac643
Date: Fri, 15 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657919812
