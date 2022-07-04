Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED83415A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656902212;
	h=To:Subject:From:Message-Id:Date;
	bh=dQB+zO5TBPvMxPOHGxJoczREEjzyGXnfaq7Jpg4OkGw=;
	b=FJwGvKhdocUOz5c1UCm283L0YV+PhJdO/lvny2Cmk5k0i5C28b16oomFDjZpZufy
	bQX3z55GMPFZnrTqx7EyYXFbJ0pGVDLKqu0cKmYnmGRdHoaYHwsEVR6AEYztaBsuBqw
	elDv6yHDxfHTE47FWnPIaGQeQegRmyUPOJcN+P54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656902212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQB+zO5TBPvMxPOHGxJoczREEjzyGXnfaq7Jpg4OkGw=;
	b=KKL4pJsEr7bWXjd8d905w1cL46oX0uf3pDQtByuFee0RLfqn3EXMJHOODGyPa8ik
	OISI1/zHbj9JdZGP6j3AgIQ8q4I6FWE+isZe3ZHPAU7iQBg/6USzLMdsMh/95tSSg2y
	Ouej5Y6Ailnm2DEUr9Obzts5thDkdwHei9GS/a9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7115aa9-4bc378e8-a4e1-4a86-81a9-f05d8b331930-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60294ca5c955a4a6fda299153b77d25dcb6282a2a803b49992b6a83236a3ab26
Date: Mon, 4 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656902212
