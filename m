Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A417318D
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 10:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648464298;
	h=To:Subject:From:Message-Id:Date;
	bh=8XkvZbBhoP9DNnLGIfNRaEa26uO5QagXfK8+vOlNSTI=;
	b=Ub3DfHYo7dLG2gJ03f35mP79LFKvznmX6B18uV5Zusqh44pP8s5LoxqfeAGUEp8B
	2aKP5dmftMble7iJ8k1w6aDoDXgbyhbOLYV1BswFKo1Y/4ejO+IRS5w+VyVqO0VQSOP
	UOCkX0z5Qz3Jlz27Yq0ALzUHAXucZ/+NINS+P7w4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648464298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8XkvZbBhoP9DNnLGIfNRaEa26uO5QagXfK8+vOlNSTI=;
	b=JVSAvHVVn94u0CvU19csoAUF68sOwe6aYWij6qYISImTNx0201m5ML57XwpmQWP2
	OA/Hy/d1GhvXChKzvLv+awvyPIPdiwpJuQGaWwxoGiCkFJgBsbzwsAWJ4Fura6SXr6n
	3ZK7HalaTzMK4x/vnCRmhJAXP7G3YAehjl4PbO6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0210162-19867f75-4fdb-4f4f-a631-daa5c4585158-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8be6d7f8994d112b3fb7d516f736342ea83476ad06eaf3cdf643bd7f18cb1635
Date: Mon, 28 Mar 2022 10:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648464298
