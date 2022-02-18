Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BCFC1FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645164684;
	h=To:Subject:From:Message-Id:Date;
	bh=i/B3JvJ1+hNg4yTtm49AwYgWNF4CU5os7dl85b8M+zY=;
	b=W1If5xX+KkFl75oK6KAzYyZZU47Pb2RWhVS3Pi0IEjFnLWUJ0M6sfwAJXUasvZiW
	cVX9S+Eig/LM24pzNqxKR0/BGuoCltAq4c2BgshlaNqSTBxb4I+qjLr6jzdNHJlQ6Ka
	btBkIx17DK/2bKgLkfC1zexdg1L8QkaoeJhN0beA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645164684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i/B3JvJ1+hNg4yTtm49AwYgWNF4CU5os7dl85b8M+zY=;
	b=JENqcFiVvdO7+x0UOiPrtcNs6tYYlzF44ichvJjxligDahglTVFK07S9XeNTWQZt
	jmu4HnSCOf4U+vwIR1AFhz9WuOlVPo3cMvJ34XY9/s0DzSzpyVayJpojO75dP5SqKg7
	tdcs4WnJj2WQG3yFek0neraxqo0sc100KmvDETAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b74e5f4-efff5ef6-03bb-4440-b2cb-ba1f1f403189-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c5453243c6f15b2ceb2c66010ec7d03e687ff42e2432c17ac95177dc308bd5d
Date: Fri, 18 Feb 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645164684
