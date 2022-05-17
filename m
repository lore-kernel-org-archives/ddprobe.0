Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC117F
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 07:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652773859;
	h=To:Subject:From:Message-Id:Date;
	bh=Fs1buTao4ocgcB/0G7stAtwve34ECIeo+nCSS8kj7Zc=;
	b=Q7qd9taGPFkOiIWHotSpEI3ftfb7yO/NaKVoSdItSUaw63gapBVoqlW2WwsNhfOk
	YgQ9uMQ09Dfv1lVVDqCOozoFWUZ4qXpoYaJZSosNOiyyh0X/CYP1rAR9pDM18CY3ztN
	sq8lxKhnsyKEicXSjweWnWE80Mgq8B3Oc18B6e5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652773859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fs1buTao4ocgcB/0G7stAtwve34ECIeo+nCSS8kj7Zc=;
	b=DGX9mdHnwvmS6IA8w05AkDmiQGsR+eYhh3YHottHC6NkyIPYYtO2JeDs5or3061n
	phyCTmhrjWUZcTJcf1N1rQPhYH7A9Eqnqgig3fpoQrJTYqU+2k4p9egSpcFgmakdWrz
	RWVEmiwvhiSpYoK74qJ6mu1i25Whl17PH/P+gIfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d0ffafbd-e2d39ed3-de4f-4ad2-8a39-a4b8edb51145-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcef35d9d1180ebb4d821c35137a18c1aca0190d62e83bf3eb1940c9bbb187e6
Date: Tue, 17 May 2022 07:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652773859
